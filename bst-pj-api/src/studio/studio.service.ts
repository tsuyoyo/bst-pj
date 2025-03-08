import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Studio } from '../entities/studio.entity';
import { Area } from '../entities/area.entity';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import { Studio as ProtoStudio } from '../proto/bst/v1/location';

@Injectable()
export class StudioService {
  constructor(
    @InjectRepository(Studio)
    private readonly studioRepository: Repository<Studio>,
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
  ) {}

  async createStudio(
    createStudioDto: CreateStudioDto,
    userId: number,
  ): Promise<{ studio: any }> {
    const area = await this.areaRepository.findOne({
      where: { id: createStudioDto.prefectureId },
    });

    if (!area) {
      throw new NotFoundException(
        `Area with ID ${createStudioDto.prefectureId} not found`,
      );
    }

    const studio = this.studioRepository.create({
      name: createStudioDto.name,
      description: createStudioDto.description,
      prefectureId: area.id,
      googleMapsUrl: createStudioDto.googleMapsUrl,
      additionalInfo: createStudioDto.additionalInfo,
      updatedUserId: userId,
    });

    const savedStudio = await this.studioRepository.save(studio);

    return {
      studio: {
        id: savedStudio.id,
        name: savedStudio.name,
        description: savedStudio.description,
        overallRating: 0, // TODO: Implement rating calculation logic
        rooms: [],
        area,
        googleMapsUrl: savedStudio.googleMapsUrl,
        additionalInfo: savedStudio.additionalInfo,
      },
    };
  }

  async listStudios(
    pageSize: number,
    pageToken: string | null,
    prefectureId?: number | null,
  ): Promise<{
    studios: any[];
    nextPageToken: string;
    totalSize: number;
  }> {
    const query = this.studioRepository
      .createQueryBuilder('studio')
      .leftJoinAndSelect('studio.rooms', 'room');

    if (prefectureId) {
      query.where('studio.prefectureId = :prefectureId', { prefectureId });
    }

    const skip = pageToken ? parseInt(pageToken, 10) : 0;
    query.take(pageSize).skip(skip);

    const [studios, totalSize] = await query.getManyAndCount();

    const nextPageToken =
      studios.length === pageSize ? (skip + pageSize).toString() : '';

    const studioResponses = await Promise.all(
      studios.map(async (studio) => {
        const area = await this.areaRepository.findOne({
          where: { id: studio.prefectureId },
        });

        return {
          id: studio.id,
          name: studio.name,
          description: studio.description,
          overallRating: 0, // TODO: Implement rating calculation logic
          rooms: studio.rooms || [],
          area,
          googleMapsUrl: studio.googleMapsUrl,
          additionalInfo: studio.additionalInfo,
        };
      }),
    );

    return {
      studios: studioResponses,
      nextPageToken,
      totalSize,
    };
  }

  async getStudio(id: number): Promise<{ studio: ProtoStudio }> {
    const studio = await this.studioRepository.findOne({
      where: { id },
    });

    if (!studio) {
      throw new NotFoundException(`Studio with ID ${id} not found`);
    }

    const area = await this.areaRepository.findOne({
      where: { id: studio.prefectureId },
    });

    if (!area) {
      throw new NotFoundException(
        `Area with ID ${studio.prefectureId} not found`,
      );
    }

    return {
      studio: {
        id: studio.id,
        name: studio.name,
        description: studio.description,
        overallRating: 0, // TODO: Implement rating calculation logic
        rooms: [],
        area,
        googleMapsUrl: studio.googleMapsUrl,
        additionalInfo: studio.additionalInfo,
      },
    };
  }

  async updateStudio(
    id: number,
    updateStudioDto: UpdateStudioDto,
    userId: number,
  ): Promise<{ studio: any }> {
    const studio = await this.studioRepository.findOne({
      where: { id },
    });

    if (!studio) {
      throw new NotFoundException(`Studio with ID ${id} not found`);
    }

    if (updateStudioDto.name) {
      studio.name = updateStudioDto.name;
    }

    if (updateStudioDto.description) {
      studio.description = updateStudioDto.description;
    }

    if (updateStudioDto.prefectureId) {
      const area = await this.areaRepository.findOne({
        where: { id: updateStudioDto.prefectureId },
      });
      if (!area) {
        throw new NotFoundException(
          `Area with ID ${updateStudioDto.prefectureId} not found`,
        );
      }
      studio.prefectureId = area.id;
    }

    if (updateStudioDto.googleMapsUrl) {
      studio.googleMapsUrl = updateStudioDto.googleMapsUrl;
    }

    if (updateStudioDto.additionalInfo !== undefined) {
      studio.additionalInfo = updateStudioDto.additionalInfo;
    }

    studio.updatedUserId = userId;

    const updatedStudio = await this.studioRepository.save(studio);

    const area = await this.areaRepository.findOne({
      where: { id: updatedStudio.prefectureId },
    });

    return {
      studio: {
        id: updatedStudio.id,
        name: updatedStudio.name,
        description: updatedStudio.description,
        overallRating: 0, // TODO: Implement rating calculation logic
        rooms: [],
        area,
        googleMapsUrl: updatedStudio.googleMapsUrl,
        additionalInfo: updatedStudio.additionalInfo,
      },
    };
  }

  async deleteStudio(id: number): Promise<{ success: boolean }> {
    const result = await this.studioRepository.delete(id);
    return { success: result.affected ? result.affected > 0 : false };
  }
}
