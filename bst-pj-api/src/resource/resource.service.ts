import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Resource } from '../entities/resource.entity';
import { CreateResourceDto } from './dto/create-resource.dto';
import {
  CreateResourceResponse,
  DeleteResourceResponse,
  GetResourceResponse,
  ListResourcesResponse,
} from '../proto/bst/v1/resource_service';
import { Resource as ProtoResource } from '../proto/bst/v1/content';
import { Resource_ResourceType } from '../proto/bst/v1/content';
import { ResourceType } from '../entities/types/resource-type.enum';
import { ResourceTargetType } from '../entities/types/resource-target-type.enum';

@Injectable()
export class ResourceService {
  constructor(
    @InjectRepository(Resource)
    private readonly resourceRepository: Repository<Resource>,
  ) {}

  private protoTypeToEntityType(type: Resource_ResourceType): ResourceType {
    switch (type) {
      case Resource_ResourceType.RESOURCE_TYPE_IMAGE:
        return ResourceType.RESOURCE_TYPE_IMAGE;
      case Resource_ResourceType.RESOURCE_TYPE_VIDEO:
        return ResourceType.RESOURCE_TYPE_VIDEO;
      default:
        return ResourceType.RESOURCE_TYPE_UNSPECIFIED;
    }
  }

  private entityTypeToProtoType(type: ResourceType): Resource_ResourceType {
    switch (type) {
      case ResourceType.RESOURCE_TYPE_IMAGE:
        return Resource_ResourceType.RESOURCE_TYPE_IMAGE;
      case ResourceType.RESOURCE_TYPE_VIDEO:
        return Resource_ResourceType.RESOURCE_TYPE_VIDEO;
      default:
        return Resource_ResourceType.RESOURCE_TYPE_UNSPECIFIED;
    }
  }

  private mapEntityToProto(resource: Resource): ProtoResource {
    return {
      id: resource.id,
      type: this.entityTypeToProtoType(resource.type),
      url: resource.url,
      name: resource.name,
      description: resource.description,
    };
  }

  async createResource(
    request: CreateResourceDto,
    userId: number,
  ): Promise<CreateResourceResponse> {
    const resource = this.resourceRepository.create({
      type: this.protoTypeToEntityType(request.type),
      url: request.url,
      name: request.name,
      description: request.description,
      targetType: ResourceTargetType.COMMENT,
      targetId: 0,
      createdBy: userId,
    });

    const savedResource = await this.resourceRepository.save(resource);

    return {
      resource: this.mapEntityToProto(savedResource),
    };
  }

  async listResources(
    pageSize?: number,
    pageToken?: string,
    resourceType?: Resource_ResourceType,
  ): Promise<ListResourcesResponse> {
    const query = this.resourceRepository.createQueryBuilder('resource');

    if (resourceType) {
      const entityType = this.protoTypeToEntityType(resourceType);
      query.where('resource.type = :type', { type: entityType });
    }

    if (pageSize) {
      query.take(pageSize);
    }

    if (pageToken) {
      query.skip(parseInt(pageToken, 10));
    }

    const [resources, totalSize] = await query.getManyAndCount();

    return {
      resources: resources.map((r) => this.mapEntityToProto(r)),
      nextPageToken:
        resources.length === pageSize
          ? `${parseInt(pageToken || '0', 10) + pageSize}`
          : '',
      totalSize,
    };
  }

  async getResource(resourceId: number): Promise<GetResourceResponse> {
    const resource = await this.resourceRepository.findOne({
      where: { id: resourceId },
    });

    if (!resource) {
      throw new NotFoundException('Resource not found');
    }

    return {
      resource: this.mapEntityToProto(resource),
    };
  }

  async deleteResource(resourceId: number): Promise<DeleteResourceResponse> {
    const resource = await this.resourceRepository.findOne({
      where: { id: resourceId },
    });

    if (!resource) {
      throw new NotFoundException('Resource not found');
    }

    await this.resourceRepository.remove(resource);

    return {
      success: true,
    };
  }
}
