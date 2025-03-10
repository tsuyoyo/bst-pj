/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LocationService } from './location.service';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';
import { CreateLocationDto } from './dto/create-location.dto';
import { UpdateLocationDto } from './dto/update-location.dto';

describe('LocationService', () => {
  let service: LocationService;
  let locationRepository: Repository<Location>;
  // let areaRepository: Repository<Area>;

  const mockArea: Area = {
    id: 1,
    name: 'Test Area',
    prefectureId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockLocation: Location = {
    id: 1,
    name: 'Test Location',
    area: mockArea,
    googleMapsUrl: 'https://maps.google.com',
    additionalInfo: 'Additional Info',
    prefectureId: mockArea.id,
    createdAt: new Date(),
    updatedAt: new Date(),
    updatedUserId: 1,
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        LocationService,
        {
          provide: getRepositoryToken(Location),
          useValue: {
            create: jest.fn().mockReturnValue(mockLocation),
            save: jest.fn().mockResolvedValue(mockLocation),
            findOneOrFail: jest.fn().mockResolvedValue(mockLocation),
            createQueryBuilder: jest.fn(() => ({
              leftJoinAndSelect: jest.fn().mockReturnThis(),
              where: jest.fn().mockReturnThis(),
              take: jest.fn().mockReturnThis(),
              skip: jest.fn().mockReturnThis(),
              getManyAndCount: jest.fn().mockResolvedValue([[mockLocation], 1]),
            })),
            delete: jest.fn().mockResolvedValue({ affected: 1 }),
          },
        },
        {
          provide: getRepositoryToken(Area),
          useValue: {
            findOneOrFail: jest.fn().mockResolvedValue(mockArea),
            findOne: jest.fn().mockResolvedValue(mockArea),
          },
        },
      ],
    }).compile();

    service = module.get<LocationService>(LocationService);
    locationRepository = module.get<Repository<Location>>(
      getRepositoryToken(Location),
    );
    // areaRepository = module.get<Repository<Area>>(getRepositoryToken(Area));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createLocation', () => {
    it('should create a location', async () => {
      const createLocationDto: CreateLocationDto = {
        name: 'Test Location',
        googleMapsUrl: 'https://maps.google.com',
        additionalInfo: 'Test Info',
        prefectureId: 1,
      };

      const result = await service.createLocation(createLocationDto, 1);

      expect(result).toEqual(mockLocation);
      expect(locationRepository.create).toHaveBeenCalledWith({
        name: 'Test Location',
        googleMapsUrl: 'https://maps.google.com',
        additionalInfo: 'Test Info',
        prefectureId: 1,
        updatedUserId: 1,
      });
    });
  });

  describe('listLocations', () => {
    it('should return a list of locations', async () => {
      const result = await service.listLocations(10);

      expect(result).toEqual({
        locations: [mockLocation],
        nextPageToken: null,
        totalSize: 1,
      });
    });
  });

  describe('getLocation', () => {
    it('should return a location', async () => {
      const result = await service.getLocation(1);

      expect(result).toEqual(mockLocation);
      expect(locationRepository.findOneOrFail).toHaveBeenCalledWith({
        where: { id: 1 },
        relations: ['area'],
      });
    });
  });

  describe('updateLocation', () => {
    it('should update a location', async () => {
      const updateLocationDto: UpdateLocationDto = {
        name: 'Updated Location',
        googleMapsUrl: 'https://maps.google.com/updated',
        additionalInfo: 'Updated Info',
        prefectureId: 2,
      };

      const result = await service.updateLocation(1, updateLocationDto, 1);

      expect(result).toEqual(mockLocation);
    });
  });

  describe('deleteLocation', () => {
    it('should delete a location', async () => {
      const result = await service.deleteLocation(1);

      expect(result).toBe(true);
      expect(locationRepository.delete).toHaveBeenCalledWith(1);
    });
  });
});
