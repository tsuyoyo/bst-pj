/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { MyProfileController } from './my-profile.controller';
import { MyProfileService } from './my-profile.service';
import { User } from '../entities/user.entity';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('MyProfileController', () => {
  let controller: MyProfileController;
  let service: MyProfileService;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'hashedpassword',
    externalId: null,
    externalService: null,
    iconUrl: 'https://example.com/icon.jpg',
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockResponse = {
    success: true,
    profile: {
      user: mockUser,
      bio: 'Test Bio',
      areaId: 1,
      genres: [],
      parts: [],
      artists: [],
    },
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MyProfileController],
      providers: [
        {
          provide: MyProfileService,
          useValue: {
            updateIntroduction: jest.fn().mockResolvedValue(mockResponse),
            updateUserName: jest.fn().mockResolvedValue(mockResponse),
            updateUserIcon: jest.fn().mockResolvedValue(mockResponse),
            updateUserGenres: jest.fn().mockResolvedValue(mockResponse),
            updateUserArtists: jest.fn().mockResolvedValue(mockResponse),
            updateUserParts: jest.fn().mockResolvedValue(mockResponse),
            updateUserArea: jest.fn().mockResolvedValue(mockResponse),
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
            findOne: jest.fn(),
          },
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<MyProfileController>(MyProfileController);
    service = module.get<MyProfileService>(MyProfileService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('updateIntroduction', () => {
    it('should update introduction successfully', async () => {
      const dto = { introduction: 'New Introduction' };
      const result = await controller.updateIntroduction(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateIntroduction).toHaveBeenCalledWith(
        mockUser.id,
        dto.introduction,
      );
    });
  });

  describe('updateUserName', () => {
    it('should update user name successfully', async () => {
      const dto = { name: 'New Name' };
      const result = await controller.updateUserName(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserName).toHaveBeenCalledWith(
        mockUser.id,
        dto.name,
      );
    });
  });

  describe('updateUserIcon', () => {
    it('should update user icon successfully', async () => {
      const dto = { icon: 'https://example.com/new-icon.jpg' };
      const result = await controller.updateUserIcon(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserIcon).toHaveBeenCalledWith(
        mockUser.id,
        dto.icon,
      );
    });
  });

  describe('updateUserGenres', () => {
    it('should update user genres successfully', async () => {
      const dto = { genreIds: [1, 2, 3] };
      const result = await controller.updateUserGenres(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserGenres).toHaveBeenCalledWith(
        mockUser.id,
        dto.genreIds,
      );
    });
  });

  describe('updateUserArtists', () => {
    it('should update user artists successfully', async () => {
      const dto = { artistIds: [1, 2, 3] };
      const result = await controller.updateUserArtists(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserArtists).toHaveBeenCalledWith(
        mockUser.id,
        dto.artistIds,
      );
    });
  });

  describe('updateUserParts', () => {
    it('should update user parts successfully', async () => {
      const dto = { partIds: [1, 2, 3] };
      const result = await controller.updateUserParts(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserParts).toHaveBeenCalledWith(
        mockUser.id,
        dto.partIds,
      );
    });
  });

  describe('updateUserArea', () => {
    it('should update user area successfully', async () => {
      const dto = { areaId: 2 };
      const result = await controller.updateUserArea(dto, mockUser);
      expect(result).toEqual(mockResponse);
      expect(service.updateUserArea).toHaveBeenCalledWith(
        mockUser.id,
        dto.areaId,
      );
    });
  });
});
