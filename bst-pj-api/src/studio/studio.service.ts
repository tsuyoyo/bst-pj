import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Studio } from '../entities/studio.entity';
import { Location } from '../entities/location.entity';
import { StudioMapper } from './mapper/studio.mapper';
import {
  CreateStudioResponse,
  ListStudiosResponse,
  GetStudioResponse,
  UpdateStudioResponse,
  DeleteStudioResponse,
} from '../proto/bst/v1/studio_service';

@Injectable()
export class StudioService {
  constructor(
    @InjectRepository(Studio)
    private readonly studioRepository: Repository<Studio>,
    @InjectRepository(Location)
    private readonly locationRepository: Repository<Location>,
  ) {}

  async createStudio(
    name: string,
    description: string,
    locationId: number,
    userId: number,
  ): Promise<CreateStudioResponse> {
    const location = await this.locationRepository.findOneOrFail({
      where: { id: locationId },
    });

    const studio = this.studioRepository.create({
      name,
      description,
      locationId: location.id,
      updatedUserId: userId,
    });

    const savedStudio = await this.studioRepository.save(studio);
    const studioWithLocation = await this.studioRepository.findOne({
      where: { id: savedStudio.id },
      relations: ['location'],
    });

    return {
      studio: studioWithLocation
        ? StudioMapper.toProto(studioWithLocation)
        : undefined,
    };
  }

  async listStudios(
    pageSize: number,
    pageToken?: string | null,
    areaId?: number | null,
  ): Promise<ListStudiosResponse> {
    const skip = pageToken ? parseInt(pageToken, 10) : 0;
    const take = pageSize || 10;

    const queryBuilder = this.studioRepository
      .createQueryBuilder('studio')
      .leftJoinAndSelect('studio.location', 'location')
      .leftJoinAndSelect('location.area', 'area');

    if (areaId) {
      queryBuilder.where('area.id = :areaId', { areaId });
    }

    const [studios, totalSize] = await queryBuilder
      .skip(skip)
      .take(take)
      .getManyAndCount();

    const nextPageToken =
      studios.length === take ? (skip + take).toString() : null;

    return {
      studios: StudioMapper.toProtoList(studios),
      nextPageToken: nextPageToken || '',
      totalSize,
    };
  }

  async getStudio(id: number): Promise<GetStudioResponse> {
    const studio = await this.studioRepository.findOne({
      where: { id },
      relations: ['location', 'location.area'],
    });

    if (!studio) {
      throw new NotFoundException(`Studio with ID ${id} not found`);
    }

    return {
      studio: StudioMapper.toProto(studio),
    };
  }

  async updateStudio(
    id: number,
    name: string | undefined,
    description: string | undefined,
    locationId: number | undefined,
    userId: number,
  ): Promise<UpdateStudioResponse> {
    const studio = await this.studioRepository.findOne({
      where: { id },
      relations: ['location', 'location.area'],
    });

    if (!studio) {
      throw new NotFoundException(`Studio with ID ${id} not found`);
    }

    if (name) {
      studio.name = name;
    }
    if (description !== undefined) {
      studio.description = description;
    }
    if (locationId) {
      const location = await this.locationRepository.findOneOrFail({
        where: { id: locationId },
      });
      studio.locationId = location.id;
    }
    studio.updatedUserId = userId;

    const updatedStudio = await this.studioRepository.save(studio);
    return {
      studio: StudioMapper.toProto(updatedStudio),
    };
  }

  async deleteStudio(id: number): Promise<DeleteStudioResponse> {
    const result = await this.studioRepository.delete(id);
    return {
      success: result.affected ? result.affected > 0 : false,
    };
  }
}
