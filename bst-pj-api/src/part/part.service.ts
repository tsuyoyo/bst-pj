import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Part } from '../entities/part.entity';
import { PartMapper } from './mapper/part.mapper';
import {
  CreatePartResponse,
  DeletePartResponse,
  GetPartResponse,
  ListPartsResponse,
  UpdatePartResponse,
} from '../proto/bst/v1/part_service';

@Injectable()
export class PartService {
  constructor(
    @InjectRepository(Part)
    private readonly partRepository: Repository<Part>,
  ) {}

  async createPart(
    name: string,
    description: string,
    userId: number,
  ): Promise<CreatePartResponse> {
    const part = this.partRepository.create({
      name,
      description,
      updatedUserId: userId,
    });

    const savedPart = await this.partRepository.save(part);
    return {
      part: PartMapper.toProto(savedPart),
    };
  }

  async listParts(
    pageSize: number,
    pageToken: string | null,
  ): Promise<ListPartsResponse> {
    const skip = pageToken ? parseInt(pageToken, 10) : 0;
    const take = pageSize || 10;

    const [parts, totalSize] = await this.partRepository.findAndCount({
      skip,
      take,
    });

    const nextPageToken =
      parts.length === take ? (skip + take).toString() : null;

    return {
      parts: PartMapper.toProtoList(parts),
      nextPageToken: nextPageToken || '',
      totalSize,
    };
  }

  async getPart(id: number): Promise<GetPartResponse> {
    const part = await this.partRepository.findOne({
      where: { id },
    });

    if (!part) {
      throw new NotFoundException(`Part with ID ${id} not found`);
    }

    return {
      part: PartMapper.toProto(part),
    };
  }

  async updatePart(
    id: number,
    name: string | undefined,
    description: string | undefined,
    userId: number,
  ): Promise<UpdatePartResponse> {
    const part = await this.partRepository.findOne({
      where: { id },
    });

    if (!part) {
      throw new NotFoundException(`Part with ID ${id} not found`);
    }

    if (name !== undefined) {
      part.name = name;
    }
    if (description !== undefined) {
      part.description = description;
    }
    part.updatedUserId = userId;

    const updatedPart = await this.partRepository.save(part);
    return {
      part: PartMapper.toProto(updatedPart),
    };
  }

  async deletePart(id: number): Promise<DeletePartResponse> {
    const result = await this.partRepository.delete(id);
    return {
      success: result.affected ? result.affected > 0 : false,
    };
  }
}
