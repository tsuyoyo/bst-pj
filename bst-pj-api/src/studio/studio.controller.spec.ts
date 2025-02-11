/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { StudioController } from './studio.controller';
import { StudioService } from './studio.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { User } from '../entities/user.entity';

describe('StudioController', () => {
  let controller: StudioController;
  let service: StudioService;

  const mockUser = {
    id: 1,
    email: 'test@example.com',
    name: 'Test User',
  };

  const mockStudioResponse = {
    studio: {
      id: 1,
      location: {
        id: 1,
        name: 'Test Location',
        additionalInfo: 'Additional Info',
        area: {
          name: 'Test Area',
          prefectureId: 1,
        },
        mapUrl: 'https://maps.google.com',
      },
      overallRating: 0,
    },
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StudioController],
      providers: [
        {
          provide: StudioService,
          useValue: {
            createStudio: jest.fn().mockResolvedValue(mockStudioResponse),
            listStudios: jest.fn().mockResolvedValue({
              studios: [mockStudioResponse.studio],
              nextPageToken: '',
              totalSize: 1,
            }),
            getStudio: jest.fn().mockResolvedValue(mockStudioResponse),
            updateStudio: jest.fn().mockResolvedValue(mockStudioResponse),
            deleteStudio: jest.fn().mockResolvedValue({ success: true }),
          },
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
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<StudioController>(StudioController);
    service = module.get<StudioService>(StudioService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createStudio', () => {
    it('should create a studio', async () => {
      const createStudioDto = {
        name: 'Test Studio',
        description: 'Test Description',
        locationId: 1,
      };

      const result = await controller.createStudio(
        createStudioDto,
        mockUser as User,
      );
      expect(result).toEqual(mockStudioResponse);
      expect(service.createStudio).toHaveBeenCalledWith(
        createStudioDto.name,
        createStudioDto.description,
        createStudioDto.locationId,
        mockUser.id,
      );
    });
  });

  describe('listStudios', () => {
    it('should return a list of studios', async () => {
      const result = await controller.listStudios(10, null);
      expect(result).toEqual({
        studios: [mockStudioResponse.studio],
        nextPageToken: '',
        totalSize: 1,
      });
      expect(service.listStudios).toHaveBeenCalledWith(10, null, undefined);
    });
  });

  describe('getStudio', () => {
    it('should return a studio', async () => {
      const result = await controller.getStudio(1);
      expect(result).toEqual(mockStudioResponse);
      expect(service.getStudio).toHaveBeenCalledWith(1);
    });
  });

  describe('updateStudio', () => {
    it('should update a studio', async () => {
      const updateStudioDto = {
        name: 'Updated Studio',
        description: 'Updated Description',
        locationId: 2,
      };

      const result = await controller.updateStudio(
        1,
        updateStudioDto,
        mockUser as User,
      );
      expect(result).toEqual(mockStudioResponse);
      expect(service.updateStudio).toHaveBeenCalledWith(
        1,
        updateStudioDto.name,
        updateStudioDto.description,
        updateStudioDto.locationId,
        mockUser.id,
      );
    });
  });

  describe('deleteStudio', () => {
    it('should delete a studio', async () => {
      const result = await controller.deleteStudio(1);
      expect(result).toEqual({ success: true });
      expect(service.deleteStudio).toHaveBeenCalledWith(1);
    });
  });
});
