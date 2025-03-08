/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { StudioController } from './studio.controller';
import { StudioService } from './studio.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { User } from '../entities/user.entity';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import { ExternalService } from '../entities/types/external-service.enum';

describe('StudioController', () => {
  let controller: StudioController;
  let service: StudioService;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    externalId: 'ext-1',
    externalService: ExternalService.GOOGLE,
    password: 'hashed-password',
    iconUrl: 'https://example.com/icon.png',
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockStudioResponse = {
    studio: {
      id: 1,
      area: {
        id: 1,
        name: 'Test Area',
        prefectureId: 1,
      },
      googleMapsUrl: 'https://maps.google.com',
      additionalInfo: 'Additional Info',
      overallRating: 0,
      rooms: [],
    },
  };

  const mockStudioService = {
    createStudio: jest.fn(),
    listStudios: jest.fn(),
    getStudio: jest.fn(),
    updateStudio: jest.fn(),
    deleteStudio: jest.fn(),
  };

  const mockJwtAuthGuard = {
    canActivate: jest.fn().mockReturnValue(true),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StudioController],
      providers: [
        {
          provide: StudioService,
          useValue: mockStudioService,
        },
        {
          provide: JwtService,
          useValue: {
            sign: jest.fn(),
            verify: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn().mockResolvedValue(mockUser),
          },
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue(mockJwtAuthGuard)
      .compile();

    controller = module.get<StudioController>(StudioController);
    service = module.get<StudioService>(StudioService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createStudio', () => {
    it('should create a studio', async () => {
      const expectedResult = {
        studio: {
          id: 1,
          overallRating: 0,
          rooms: [],
          area: {
            id: 1,
            name: 'Test Area',
            prefectureId: 1,
            createdAt: new Date(),
            updatedAt: new Date(),
          },
          googleMapsUrl: 'https://maps.google.com',
          additionalInfo: 'Additional Info',
        },
      };

      mockStudioService.createStudio.mockResolvedValue(expectedResult);

      const createStudioDto: CreateStudioDto = {
        name: 'Test Studio',
        description: 'Test Description',
        prefectureId: 1,
        googleMapsUrl: 'https://maps.google.com',
        additionalInfo: 'Additional Info',
      };

      const req = { user: mockUser };
      const result = await controller.createStudio(createStudioDto, req);

      expect(result).toEqual(expectedResult);
      expect(service.createStudio).toHaveBeenCalledWith(createStudioDto, 1);
    });
  });

  describe('listStudios', () => {
    it('should return a list of studios', async () => {
      const expectedResult = {
        studios: [
          {
            id: 1,
            overallRating: 0,
            rooms: [],
            area: {
              id: 1,
              name: 'Test Area',
              prefectureId: 1,
              createdAt: new Date(),
              updatedAt: new Date(),
            },
            googleMapsUrl: 'https://maps.google.com',
            additionalInfo: 'Additional Info',
          },
        ],
        nextPageToken: '',
        totalSize: 1,
      };

      mockStudioService.listStudios.mockResolvedValue(expectedResult);

      const result = await controller.listStudios(10, null, null);

      expect(result).toEqual(expectedResult);
      expect(service.listStudios).toHaveBeenCalledWith(10, null, null);
    });
  });

  describe('getStudio', () => {
    it('should return a studio', async () => {
      const expectedResult = {
        studio: {
          id: 1,
          overallRating: 0,
          rooms: [],
          area: {
            id: 1,
            name: 'Test Area',
            prefectureId: 1,
            createdAt: new Date(),
            updatedAt: new Date(),
          },
          googleMapsUrl: 'https://maps.google.com',
          additionalInfo: 'Additional Info',
        },
      };

      mockStudioService.getStudio.mockResolvedValue(expectedResult);

      const result = await controller.getStudio(1);

      expect(result).toEqual(expectedResult);
      expect(service.getStudio).toHaveBeenCalledWith(1);
    });
  });

  describe('updateStudio', () => {
    it('should update a studio', async () => {
      const expectedResult = {
        studio: {
          id: 1,
          overallRating: 0,
          rooms: [],
          area: {
            id: 2,
            name: 'Updated Area',
            prefectureId: 2,
            createdAt: new Date(),
            updatedAt: new Date(),
          },
          googleMapsUrl: 'https://maps.google.com/updated',
          additionalInfo: 'Updated Additional Info',
        },
      };

      mockStudioService.updateStudio.mockResolvedValue(expectedResult);

      const updateStudioDto: UpdateStudioDto = {
        name: 'Updated Studio',
        description: 'Updated Description',
        prefectureId: 2,
        googleMapsUrl: 'https://maps.google.com/updated',
        additionalInfo: 'Updated Additional Info',
      };

      const req = { user: mockUser };
      const result = await controller.updateStudio(1, updateStudioDto, req);

      expect(result).toEqual(expectedResult);
      expect(service.updateStudio).toHaveBeenCalledWith(1, updateStudioDto, 1);
    });
  });

  describe('deleteStudio', () => {
    it('should delete a studio', async () => {
      const expectedResult = { success: true };

      mockStudioService.deleteStudio.mockResolvedValue(expectedResult);

      const result = await controller.deleteStudio(1);

      expect(result).toEqual(expectedResult);
      expect(service.deleteStudio).toHaveBeenCalledWith(1);
    });
  });
});
