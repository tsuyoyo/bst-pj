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
      const createStudioDto: CreateStudioDto = {
        name: 'Test Studio',
        description: 'Test Description',
        areaId: 1,
        googleMapsUrl: 'https://maps.google.com',
        additionalInfo: 'Additional Info',
      };

      const result = await controller.createStudio(
        createStudioDto,
        mockUser as User,
      );
      expect(result).toEqual(mockStudioResponse);
      expect(service.createStudio).toHaveBeenCalledWith(
        createStudioDto,
        mockUser.id,
      );
    });
  });

  describe('listStudios', () => {
    it('should return a list of studios', async () => {
      const result = await controller.listStudios('10');
      expect(result).toEqual({
        studios: [mockStudioResponse.studio],
        nextPageToken: '',
        totalSize: 1,
      });
      expect(service.listStudios).toHaveBeenCalledWith(
        10,
        undefined,
        undefined,
      );
    });

    it('should pass areaId when provided', async () => {
      const result = await controller.listStudios('10', undefined, '1');
      expect(result).toEqual({
        studios: [mockStudioResponse.studio],
        nextPageToken: '',
        totalSize: 1,
      });
      expect(service.listStudios).toHaveBeenCalledWith(10, undefined, 1);
    });
  });

  describe('getStudio', () => {
    it('should return a studio', async () => {
      const result = await controller.getStudio('1');
      expect(result).toEqual(mockStudioResponse);
      expect(service.getStudio).toHaveBeenCalledWith(1);
    });
  });

  describe('updateStudio', () => {
    it('should update a studio', async () => {
      const updateStudioDto: UpdateStudioDto = {
        name: 'Updated Studio',
        description: 'Updated Description',
        areaId: 2,
        googleMapsUrl: 'https://maps.google.com/updated',
        additionalInfo: 'Updated Additional Info',
      };

      const result = await controller.updateStudio(
        '1',
        updateStudioDto,
        mockUser as User,
      );
      expect(result).toEqual(mockStudioResponse);
      expect(service.updateStudio).toHaveBeenCalledWith(
        1,
        updateStudioDto,
        mockUser.id,
      );
    });
  });

  describe('deleteStudio', () => {
    it('should delete a studio', async () => {
      const result = await controller.deleteStudio('1');
      expect(result).toEqual({ success: true });
      expect(service.deleteStudio).toHaveBeenCalledWith(1);
    });
  });
});
