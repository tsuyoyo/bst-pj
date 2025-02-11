/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { ResourceController } from './resource.controller';
import { ResourceService } from './resource.service';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { User } from '../entities/user.entity';
import { Resource_ResourceType } from '../proto/bst/v1/content';
import { CreateResourceDto } from './dto/create-resource.dto';
import { ExternalService } from '../entities/types/external-service.enum';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('ResourceController', () => {
  let controller: ResourceController;
  let service: ResourceService;

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

  const mockResource = {
    id: 1,
    type: Resource_ResourceType.RESOURCE_TYPE_IMAGE,
    url: 'https://example.com/image.jpg',
    name: 'Test Image',
    description: 'Test Description',
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ResourceController],
      providers: [
        {
          provide: ResourceService,
          useValue: {
            createResource: jest.fn(),
            listResources: jest.fn(),
            getResource: jest.fn(),
            deleteResource: jest.fn(),
          },
        },
        {
          provide: JwtService,
          useValue: {
            verifyAsync: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn(),
          },
        },
        JwtAuthGuard,
      ],
    }).compile();

    controller = module.get<ResourceController>(ResourceController);
    service = module.get<ResourceService>(ResourceService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createResource', () => {
    const createResourceDto: CreateResourceDto = {
      type: Resource_ResourceType.RESOURCE_TYPE_IMAGE,
      url: 'https://example.com/image.jpg',
      name: 'Test Image',
      description: 'Test Description',
    };

    it('should create a resource successfully', async () => {
      const mockResponse = { resource: mockResource };
      jest.spyOn(service, 'createResource').mockResolvedValue(mockResponse);

      const result = await controller.createResource(
        createResourceDto,
        mockUser,
      );

      expect(service.createResource).toHaveBeenCalledWith(
        createResourceDto,
        mockUser.id,
      );
      expect(result.resource).toBeDefined();
      expect(result.resource).toEqual(mockResource);
    });
  });

  describe('listResources', () => {
    const mockResponse = {
      resources: [mockResource],
      nextPageToken: 'next-token',
      totalSize: 1,
    };

    it('should return a list of resources', async () => {
      jest.spyOn(service, 'listResources').mockResolvedValue(mockResponse);

      const result = await controller.listResources(
        10,
        'token',
        Resource_ResourceType.RESOURCE_TYPE_IMAGE,
      );

      expect(service.listResources).toHaveBeenCalledWith(
        10,
        'token',
        Resource_ResourceType.RESOURCE_TYPE_IMAGE,
      );
      expect(result).toEqual(mockResponse);
    });
  });

  describe('getResource', () => {
    const mockResponse = { resource: mockResource };

    it('should return a resource by id', async () => {
      jest.spyOn(service, 'getResource').mockResolvedValue(mockResponse);

      const result = await controller.getResource('1');

      expect(service.getResource).toHaveBeenCalledWith(1);
      expect(result.resource).toBeDefined();
      expect(result.resource).toEqual(mockResource);
    });
  });

  describe('deleteResource', () => {
    const mockResponse = { success: true };

    it('should delete a resource successfully', async () => {
      jest.spyOn(service, 'deleteResource').mockResolvedValue(mockResponse);

      const result = await controller.deleteResource('1', mockUser);

      expect(service.deleteResource).toHaveBeenCalledWith(1);
      expect(result.success).toBe(true);
    });
  });
});
