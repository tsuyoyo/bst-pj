/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { LocationController } from './location.controller';
import { LocationService } from './location.service';
import { CreateLocationDto } from './dto/create-location.dto';
import { UpdateLocationDto } from './dto/update-location.dto';
import { ListLocationsDto } from './dto/list-locations.dto';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';
import { User } from '../entities/user.entity';
import { ExternalService } from '../entities/types/external-service.enum';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('LocationController', () => {
  let controller: LocationController;
  let service: LocationService;

  const mockUser: Partial<User> = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    externalId: 'ext-1',
    externalService: ExternalService.GOOGLE,
    password: 'hashed-password',
    iconUrl: 'https://example.com/icon.png',
    createdAt: new Date(),
    updatedAt: new Date(),
  };

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
    googleMapsUrl: 'https://maps.google.com',
    additionalInfo: 'Test Info',
    areaId: mockArea.id,
    area: mockArea,
    createdAt: new Date(),
    updatedAt: new Date(),
    updatedUserId: 1,
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [LocationController],
      providers: [
        {
          provide: LocationService,
          useValue: {
            createLocation: jest.fn().mockResolvedValue(mockLocation),
            listLocations: jest.fn().mockResolvedValue({
              locations: [mockLocation],
              nextPageToken: null,
              totalSize: 1,
            }),
            getLocation: jest.fn().mockResolvedValue(mockLocation),
            updateLocation: jest.fn().mockResolvedValue(mockLocation),
            deleteLocation: jest.fn().mockResolvedValue(true),
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

    controller = module.get<LocationController>(LocationController);
    service = module.get<LocationService>(LocationService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createLocation', () => {
    it('should create a location', async () => {
      const createLocationDto: CreateLocationDto = {
        name: 'Test Location',
        googleMapsUrl: 'https://maps.google.com',
        additionalInfo: 'Test Info',
        areaId: 1,
      };

      const result = await controller.createLocation(
        createLocationDto,
        mockUser as User,
      );

      expect(result.location).toBeDefined();
      expect(service.createLocation).toHaveBeenCalledWith(
        createLocationDto.name,
        createLocationDto.googleMapsUrl,
        createLocationDto.additionalInfo,
        createLocationDto.areaId,
        mockUser.id,
      );
    });
  });

  describe('listLocations', () => {
    it('should return a list of locations', async () => {
      const query: ListLocationsDto = {
        pageSize: 10,
      };

      const result = await controller.listLocations(query);

      expect(result.locations).toBeDefined();
      expect(result.locations).toHaveLength(1);
      expect(service.listLocations).toHaveBeenCalledWith(10, null, undefined);
    });
  });

  describe('getLocation', () => {
    it('should return a location', async () => {
      const result = await controller.getLocation(1);

      expect(result.location).toBeDefined();
      expect(service.getLocation).toHaveBeenCalledWith(1);
    });
  });

  describe('updateLocation', () => {
    it('should update a location', async () => {
      const updateLocationDto: UpdateLocationDto = {
        name: 'Updated Location',
        googleMapsUrl: 'https://maps.google.com/updated',
        additionalInfo: 'Updated Info',
        areaId: 2,
      };

      const result = await controller.updateLocation(
        1,
        updateLocationDto,
        mockUser as User,
      );

      expect(result.location).toBeDefined();
      expect(service.updateLocation).toHaveBeenCalledWith(
        1,
        updateLocationDto.name,
        updateLocationDto.googleMapsUrl,
        updateLocationDto.additionalInfo,
        updateLocationDto.areaId,
        mockUser.id,
      );
    });
  });

  describe('deleteLocation', () => {
    it('should delete a location', async () => {
      const result = await controller.deleteLocation(1);

      expect(result.success).toBe(true);
      expect(service.deleteLocation).toHaveBeenCalledWith(1);
    });
  });
});
