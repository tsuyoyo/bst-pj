import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';

@Injectable()
export class LocationService {
  constructor(
    @InjectRepository(Location)
    private readonly locationRepository: Repository<Location>,
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
  ) {}

  async createLocation(
    name: string,
    googleMapsUrl: string | null,
    additionalInfo: string | null,
    areaId: number,
    userId: number,
  ): Promise<Location> {
    const area = await this.areaRepository.findOneOrFail({
      where: { id: areaId },
    });

    const location = this.locationRepository.create({
      name,
      googleMapsUrl: googleMapsUrl || undefined,
      additionalInfo: additionalInfo || undefined,
      areaId: area.id,
      updatedUserId: userId,
    });

    return await this.locationRepository.save(location);
  }

  async listLocations(
    pageSize: number,
    pageToken: string | null,
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
    name: string | undefined,
    googleMapsUrl: string | undefined,
    additionalInfo: string | undefined,
    areaId: number | undefined,
    userId: number,
  ): Promise<Location> {
    const location = await this.locationRepository.findOneOrFail({
      where: { id },
    });
    if (!location) {
      throw new NotFoundException(`Location (id: ${id}) not found`);
    }

    if (name) {
      location.name = name;
    }
    if (googleMapsUrl !== undefined) {
      location.googleMapsUrl = googleMapsUrl;
    }
    if (additionalInfo !== undefined) {
      location.additionalInfo = additionalInfo;
    }
    if (areaId) {
      const area = await this.areaRepository.findOneOrFail({
        where: { id: areaId },
      });
      location.areaId = area.id;
    }
    location.updatedUserId = userId;

    return await this.locationRepository.save(location);
  }

  async deleteLocation(id: number): Promise<boolean> {
    const result = await this.locationRepository.delete(id);
    return result.affected ? result.affected > 0 : false;
  }
}
