/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { StudioService } from './studio.service';
import { Studio } from '../entities/studio.entity';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';
import { NotFoundException } from '@nestjs/common';

describe('StudioService', () => {
  let service: StudioService;
  let studioRepository: Repository<Studio>;

  const mockArea: Area = {
    id: 1,
    name: 'Test Area',
    prefectureId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
    updatedUserId: 1,
  };

  const mockLocation: Location = {
    id: 1,
    name: 'Test Location',
    area: mockArea,
    googleMapsUrl: 'https://maps.google.com',
    additionalInfo: 'Additional Info',
    areaId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
    updatedUserId: 1,
  };

  const mockStudio: Studio = {
    id: 1,
    name: 'Test Studio',
    description: 'Test Description',
    locationId: 1,
    location: mockLocation,
    rooms: [],
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const expectedStudioResponse = {
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
    rooms: [],
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        StudioService,
        {
          provide: getRepositoryToken(Studio),
          useValue: {
            create: jest.fn().mockReturnValue(mockStudio),
            save: jest.fn().mockResolvedValue(mockStudio),
            findOne: jest.fn().mockResolvedValue(mockStudio),
            find: jest.fn().mockResolvedValue([mockStudio]),
            createQueryBuilder: jest.fn(() => ({
              leftJoinAndSelect: jest.fn().mockReturnThis(),
              where: jest.fn().mockReturnThis(),
              skip: jest.fn().mockReturnThis(),
              take: jest.fn().mockReturnThis(),
              getManyAndCount: jest.fn().mockResolvedValue([[mockStudio], 1]),
            })),
            delete: jest.fn().mockResolvedValue({ affected: 1 }),
          },
        },
        {
          provide: getRepositoryToken(Location),
          useValue: {
            findOneOrFail: jest.fn().mockResolvedValue(mockLocation),
          },
        },
      ],
    }).compile();

    service = module.get<StudioService>(StudioService);
    studioRepository = module.get<Repository<Studio>>(
      getRepositoryToken(Studio),
    );
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createStudio', () => {
    const createStudioTest = async (): Promise<void> => {
      const result = await service.createStudio(
        'Test Studio',
        'Test Description',
        1,
        1,
      );

      expect(result).toEqual({
        studio: expectedStudioResponse,
      });

      expect(studioRepository.create).toHaveBeenCalledWith({
        name: 'Test Studio',
        description: 'Test Description',
        locationId: 1,
        updatedUserId: 1,
      });
      expect(studioRepository.save).toHaveBeenCalled();
    };

    it('should create a studio', () => createStudioTest());
  });

  describe('listStudios', () => {
    const listStudiosTest = async (): Promise<void> => {
      const result = await service.listStudios(10, null);

      expect(result).toEqual({
        studios: [expectedStudioResponse],
        nextPageToken: '',
        totalSize: 1,
      });

      expect(studioRepository.createQueryBuilder).toHaveBeenCalled();
    };

    const listStudiosWithAreaTest = async (): Promise<void> => {
      const result = await service.listStudios(10, null, 1);

      expect(result).toEqual({
        studios: [expectedStudioResponse],
        nextPageToken: '',
        totalSize: 1,
      });

      expect(studioRepository.createQueryBuilder).toHaveBeenCalled();
    };

    it('should return a list of studios', () => listStudiosTest());
    it('should filter by area when areaId is provided', () =>
      listStudiosWithAreaTest());
  });

  describe('getStudio', () => {
    const getStudioTest = async (): Promise<void> => {
      const result = await service.getStudio(1);

      expect(result).toEqual({
        studio: expectedStudioResponse,
      });

      expect(studioRepository.findOne).toHaveBeenCalledWith({
        where: { id: 1 },
        relations: ['location', 'location.area'],
      });
    };

    const getStudioNotFoundTest = async (): Promise<void> => {
      jest.spyOn(studioRepository, 'findOne').mockResolvedValue(null);
      await expect(service.getStudio(999)).rejects.toThrow(NotFoundException);
    };

    it('should return a studio', () => getStudioTest());
    it('should throw NotFoundException when studio is not found', () =>
      getStudioNotFoundTest());
  });

  describe('updateStudio', () => {
    const updateStudioTest = async (): Promise<void> => {
      const result = await service.updateStudio(
        1,
        'Updated Studio',
        'Updated Description',
        2,
        1,
      );

      expect(result).toEqual({
        studio: expectedStudioResponse,
      });

      expect(studioRepository.findOne).toHaveBeenCalledWith({
        where: { id: 1 },
        relations: ['location', 'location.area'],
      });
      expect(studioRepository.save).toHaveBeenCalled();
    };

    const updateStudioNotFoundTest = async (): Promise<void> => {
      jest.spyOn(studioRepository, 'findOne').mockResolvedValue(null);

      await expect(
        service.updateStudio(
          999,
          'Updated Studio',
          'Updated Description',
          2,
          1,
        ),
      ).rejects.toThrow(NotFoundException);
    };

    it('should update a studio', () => updateStudioTest());
    it('should throw NotFoundException when studio is not found', () =>
      updateStudioNotFoundTest());
  });

  describe('deleteStudio', () => {
    const deleteStudioTest = async (): Promise<void> => {
      const result = await service.deleteStudio(1);

      expect(result).toEqual({
        success: true,
      });

      expect(studioRepository.delete).toHaveBeenCalledWith(1);
    };

    const deleteStudioNotFoundTest = async (): Promise<void> => {
      jest
        .spyOn(studioRepository, 'delete')
        .mockResolvedValue({ affected: 0, raw: [] });

      const result = await service.deleteStudio(999);
      expect(result).toEqual({
        success: false,
      });
    };

    it('should delete a studio', () => deleteStudioTest());
    it('should return false when studio is not found', () =>
      deleteStudioNotFoundTest());
  });
});
