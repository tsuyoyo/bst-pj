import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';
import { CreateLocationDto } from './dto/create-location.dto';
import { UpdateLocationDto } from './dto/update-location.dto';

@Injectable()
export class LocationService {
  constructor(
    @InjectRepository(Location)
    private readonly locationRepository: Repository<Location>,
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
  ) {}

  async createLocation(
    createLocationDto: CreateLocationDto,
    userId: number,
  ): Promise<Location> {
    const location = this.locationRepository.create({
      name: createLocationDto.name,
      prefectureId: createLocationDto.prefectureId,
      googleMapsUrl: createLocationDto.googleMapsUrl,
      additionalInfo: createLocationDto.additionalInfo,
      updatedUserId: userId,
    });

    return await this.locationRepository.save(location);
  }

  async listLocations(
    pageSize: number,
    pageToken?: string,
    areaId?: number,
  ): Promise<{
    locations: Location[];
    nextPageToken: string | null;
    totalSize: number;
  }> {
    const query = this.locationRepository
      .createQueryBuilder('location')
      .leftJoinAndSelect('location.area', 'area');

    if (areaId) {
      query.where('location.areaId = :areaId', { areaId });
    }

    const [locations, totalSize] = await query
      .take(pageSize)
      .skip(pageToken ? parseInt(pageToken, 10) : 0)
      .getManyAndCount();

    const nextPageToken =
      locations.length === pageSize
        ? ((pageToken ? parseInt(pageToken, 10) : 0) + pageSize).toString()
        : null;

    return {
      locations,
      nextPageToken,
      totalSize,
    };
  }

  async getLocation(id: number): Promise<Location> {
    return await this.locationRepository.findOneOrFail({
      where: { id },
      relations: ['area'],
    });
  }

  async updateLocation(
    id: number,
    updateLocationDto: UpdateLocationDto,
    userId: number,
  ): Promise<Location> {
    const location = await this.locationRepository.findOneOrFail({
      where: { id },
    });
    if (!location) {
      throw new NotFoundException(`Location (id: ${id}) not found`);
    }

    if (updateLocationDto.name) {
      location.name = updateLocationDto.name;
    }
    if (updateLocationDto.prefectureId) {
      const area = await this.areaRepository.findOne({
        where: { id: updateLocationDto.prefectureId },
      });
      if (!area) {
        throw new NotFoundException(
          `Area with ID ${updateLocationDto.prefectureId} not found`,
        );
      }
      location.prefectureId = area.id;
    }
    location.updatedUserId = userId;

    return await this.locationRepository.save(location);
  }

  async deleteLocation(id: number): Promise<boolean> {
    const result = await this.locationRepository.delete(id);
    return result.affected ? result.affected > 0 : false;
  }
}
