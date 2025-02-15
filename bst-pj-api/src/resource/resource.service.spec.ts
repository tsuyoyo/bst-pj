/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { ResourceService } from './resource.service';
import { Resource } from '../entities/resource.entity';
import { Resource_ResourceType } from '../proto/bst/v1/content';
import { ResourceType } from '../entities/types/resource-type.enum';
import { ResourceTargetType } from '../entities/types/resource-target-type.enum';
import { NotFoundException } from '@nestjs/common';
import { User } from '../entities/user.entity';
import { ExternalService } from '../entities/types/external-service.enum';

describe('ResourceService', () => {
  let service: ResourceService;
  let repository: Repository<Resource>;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'password',
    externalId: '',
    externalService: ExternalService.GOOGLE,
    iconUrl: '',
    profilePictureUrl: '',
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockResource: Resource = {
    id: 1,
    type: ResourceType.IMAGE,
    url: 'https://example.com/image.jpg',
    name: 'Test Image',
    description: 'Test Description',
    targetType: ResourceTargetType.ARTIST_PROFILE,
    targetId: 0,
    createdBy: 1,
    creator: mockUser,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ResourceService,
        {
          provide: getRepositoryToken(Resource),
          useValue: {
            create: jest.fn(),
            save: jest.fn(),
            findOne: jest.fn(),
            find: jest.fn(),
            createQueryBuilder: jest.fn(),
            remove: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<ResourceService>(ResourceService);
    repository = module.get<Repository<Resource>>(getRepositoryToken(Resource));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createResource', () => {
    it('should create a resource successfully', async () => {
      const createResourceDto = {
        type: Resource_ResourceType.RESOURCE_TYPE_IMAGE,
        url: 'https://example.com/image.jpg',
        name: 'Test Image',
        description: 'Test Description',
      };
      const userId = 1;

      jest.spyOn(repository, 'create').mockReturnValue(mockResource);
      jest.spyOn(repository, 'save').mockResolvedValue(mockResource);

      const result = await service.createResource(createResourceDto, userId);

      expect(repository.create).toHaveBeenCalledWith({
        type: ResourceType.IMAGE,
        url: createResourceDto.url,
        name: createResourceDto.name,
        description: createResourceDto.description,
        targetType: ResourceTargetType.UNSPECIFIED,
        targetId: 0,
        createdBy: userId,
      });
      expect(result.resource).toBeDefined();
      expect(result.resource?.id).toBe(mockResource.id);
    });
  });

  describe('listResources', () => {
    it('should return a list of resources', async () => {
      const mockQueryBuilder = {
        where: jest.fn().mockReturnThis(),
        take: jest.fn().mockReturnThis(),
        skip: jest.fn().mockReturnThis(),
        getManyAndCount: jest.fn().mockResolvedValue([[mockResource], 1]),
      };

      jest
        .spyOn(repository, 'createQueryBuilder')
        // eslint-disable-next-line @typescript-eslint/no-unsafe-argument
        .mockReturnValue(mockQueryBuilder as any);

      const result = await service.listResources(
        10,
        '0',
        Resource_ResourceType.RESOURCE_TYPE_IMAGE,
      );

      expect(result.resources).toHaveLength(1);
      expect(result.totalSize).toBe(1);
      expect(mockQueryBuilder.where).toHaveBeenCalled();
      expect(mockQueryBuilder.take).toHaveBeenCalledWith(10);
      expect(mockQueryBuilder.skip).toHaveBeenCalledWith(0);
    });
  });

  describe('getResource', () => {
    it('should return a resource by id', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValue(mockResource);

      const result = await service.getResource(1);

      expect(repository.findOne).toHaveBeenCalledWith({
        where: { id: 1 },
      });
      expect(result.resource).toBeDefined();
      expect(result.resource?.id).toBe(mockResource.id);
    });

    it('should throw NotFoundException when resource is not found', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValue(null);

      await expect(service.getResource(1)).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteResource', () => {
    it('should delete a resource successfully', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValue(mockResource);
      jest.spyOn(repository, 'remove').mockResolvedValue(mockResource);

      const result = await service.deleteResource(1);

      expect(repository.findOne).toHaveBeenCalledWith({
        where: { id: 1 },
      });
      expect(repository.remove).toHaveBeenCalledWith(mockResource);
      expect(result.success).toBe(true);
    });

    it('should throw NotFoundException when resource to delete is not found', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValue(null);

      await expect(service.deleteResource(1)).rejects.toThrow(
        NotFoundException,
      );
    });
  });
});
