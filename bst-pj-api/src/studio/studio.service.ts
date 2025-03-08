import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Studio } from '../entities/studio.entity';
import { Studio as ProtoStudio } from '../proto/bst/v1/location';
import { Location } from '../entities/location.entity';
import {
  CreateStudioResponse,
  ListStudiosResponse,
  GetStudioResponse,
  UpdateStudioResponse,
  DeleteStudioResponse,
} from '../proto/bst/v1/studio_service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import { Area } from '../entities/area.entity';
@Injectable()
export class StudioService {
  constructor(
    @InjectRepository(Studio)
    private readonly studioRepository: Repository<Studio>,
    @InjectRepository(Location)
    private readonly locationRepository: Repository<Location>,
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
  ) {}

  async createStudio(
    createStudioDto: CreateStudioDto,
    userId: number,
  ): Promise<CreateStudioResponse> {
    const studio = this.studioRepository.create({
      name: createStudioDto.name,
      description: createStudioDto.description,
      areaId: createStudioDto.areaId,
      googleMapsUrl: createStudioDto.googleMapsUrl,
      additionalInfo: createStudioDto.additionalInfo,
      updatedUserId: userId,
    });

    const savedStudio = await this.studioRepository.save(studio);
    const studioWithLocation = await this.studioRepository.findOne({
      where: { id: savedStudio.id },
    });
    if (!studioWithLocation) {
      throw new NotFoundException(`Studio with ID ${savedStudio.id} not found`);
    }
    return {
      studio: await this.toProto(studioWithLocation),
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
      studios: await this.toProtoList(studios),
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
      studio: await this.toProto(studio),
    };
  }

  async updateStudio(
    id: number,
    updateStudioDto: UpdateStudioDto,
    userId: number,
  ): Promise<UpdateStudioResponse> {
    const studio = await this.studioRepository.findOne({
      where: { id },
      relations: ['location', 'location.area'],
    });

    if (!studio) {
      throw new NotFoundException(`Studio with ID ${id} not found`);
    }

    if (updateStudioDto.name !== undefined) {
      studio.name = updateStudioDto.name;
    }
    if (updateStudioDto.description !== undefined) {
      studio.description = updateStudioDto.description;
    }
    if (updateStudioDto.areaId !== undefined) {
      studio.areaId = updateStudioDto.areaId;
    }
    if (updateStudioDto.googleMapsUrl !== undefined) {
      studio.googleMapsUrl = updateStudioDto.googleMapsUrl;
    }
    if (updateStudioDto.additionalInfo !== undefined) {
      studio.additionalInfo = updateStudioDto.additionalInfo;
    }

    studio.updatedUserId = userId;

    const updatedStudio = await this.studioRepository.save(studio);
    return {
      studio: await this.toProto(updatedStudio),
    };
  }

  async deleteStudio(id: number): Promise<DeleteStudioResponse> {
    const result = await this.studioRepository.delete(id);
    return {
      success: result.affected ? result.affected > 0 : false,
    };
  }

  private async toProto(entity: Studio): Promise<ProtoStudio> {
    const area = await this.areaRepository.findOne({
      where: { id: entity.areaId },
    });
    if (!area) {
      throw new NotFoundException(`Area with ID ${entity.areaId} not found`);
    }
    return {
      id: entity.id,
      overallRating: 0, // TODO: Implement rating calculation logic
      rooms: [],
      area: area,
      googleMapsUrl: entity.googleMapsUrl,
      additionalInfo: entity.additionalInfo,
    };
  }

  private async toProtoList(entities: Studio[]): Promise<ProtoStudio[]> {
    return Promise.all(entities.map((entity) => this.toProto(entity)));
  }
}
