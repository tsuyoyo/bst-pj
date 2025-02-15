/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { DeleteResult, Repository } from 'typeorm';
import { MyProfileService } from './my-profile.service';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { UserGenre } from '../entities/user-genre.entity';
import { UserPart } from '../entities/user-part.entity';
import { UserArtist } from '../entities/user-artist.entity';
import { UserProfileService } from '../user-profile/user-profile.service';
import { NotFoundException } from '@nestjs/common';
import { Area } from '../entities/area.entity';
import { Genre } from '../entities/genre.entity';

describe('MyProfileService', () => {
  let service: MyProfileService;
  let userProfileRepository: Repository<UserProfile>;
  let userGenreRepository: Repository<UserGenre>;
  let userProfileService: UserProfileService;

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

  const mockArea: Area = {
    id: 1,
    name: 'Test Area',
    prefectureId: 1,
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockUserProfile: UserProfile = {
    id: 1,
    userId: 1,
    bio: 'Test Bio',
    areaId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
    user: mockUser,
    area: mockArea,
  };

  const mockDeleteResult: DeleteResult = {
    raw: [],
    affected: 1,
  };

  const mockGenre: Genre = {
    id: 1,
    name: 'Test Genre',
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockUserGenre: UserGenre = {
    id: 1,
    userId: 1,
    genreId: 1,
    createdAt: new Date(),
    user: mockUser,
    genre: mockGenre,
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        MyProfileService,
        {
          provide: getRepositoryToken(UserProfile),
          useValue: {
            findOne: jest.fn(),
            save: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn(),
            save: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(UserGenre),
          useValue: {
            delete: jest.fn().mockResolvedValue(mockDeleteResult),
            save: jest.fn(),
            create: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(UserPart),
          useValue: {
            delete: jest.fn(),
            save: jest.fn(),
            create: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(UserArtist),
          useValue: {
            delete: jest.fn(),
            save: jest.fn(),
            create: jest.fn(),
          },
        },
        {
          provide: UserProfileService,
          useValue: {
            getUserProfile: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<MyProfileService>(MyProfileService);
    userProfileRepository = module.get<Repository<UserProfile>>(
      getRepositoryToken(UserProfile),
    );
    userGenreRepository = module.get<Repository<UserGenre>>(
      getRepositoryToken(UserGenre),
    );
    userProfileService = module.get<UserProfileService>(UserProfileService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('updateIntroduction', () => {
    it('should update introduction successfully', async () => {
      jest
        .spyOn(userProfileRepository, 'findOne')
        .mockResolvedValue(mockUserProfile);
      jest
        .spyOn(userProfileRepository, 'save')
        .mockResolvedValue({ ...mockUserProfile, bio: 'New Bio' });
      jest.spyOn(userProfileService, 'getUserProfile').mockResolvedValue({
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: 'New Bio',
          area: {
            name: mockArea.name,
            prefectureId: mockArea.prefectureId,
          },
          favorite: {
            genres: [],
            artists: [],
            parts: [],
          },
          createdAt: mockUser.createdAt,
          badges: [],
        },
      });

      const result = await service.updateIntroduction(1, 'New Bio');

      expect(result.profile).toBeDefined();
      expect(userProfileRepository.findOne).toHaveBeenCalled();
      expect(userProfileRepository.save).toHaveBeenCalled();
    });

    it('should throw NotFoundException when user profile not found', async () => {
      jest.spyOn(userProfileRepository, 'findOne').mockResolvedValue(null);

      await expect(service.updateIntroduction(1, 'New Bio')).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateUserGenres', () => {
    it('should update user genres successfully', async () => {
      const userId = 1;
      const genreIds = [1];

      jest
        .spyOn(userGenreRepository, 'delete')
        .mockResolvedValue(mockDeleteResult);
      jest.spyOn(userGenreRepository, 'create').mockReturnValue(mockUserGenre);
      jest.spyOn(userGenreRepository, 'save').mockResolvedValue(mockUserGenre);

      jest.spyOn(userProfileService, 'getUserProfile').mockResolvedValue({
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          area: {
            name: mockArea.name,
            prefectureId: mockArea.prefectureId,
          },
          favorite: {
            genres: [
              {
                id: mockGenre.id,
                name: mockGenre.name,
              },
            ],
            artists: [],
            parts: [],
          },
          createdAt: mockUser.createdAt,
          badges: [],
        },
      });

      const result = await service.updateUserGenres(userId, genreIds);

      expect(result.profile).toBeDefined();
      expect(userGenreRepository.delete).toHaveBeenCalled();
      expect(userGenreRepository.save).toHaveBeenCalled();
    });
  });

  describe('updateUserArea', () => {
    it('should update user area successfully', async () => {
      jest
        .spyOn(userProfileRepository, 'findOne')
        .mockResolvedValue(mockUserProfile);
      jest
        .spyOn(userProfileRepository, 'save')
        .mockResolvedValue({ ...mockUserProfile, areaId: 2 });
      jest.spyOn(userProfileService, 'getUserProfile').mockResolvedValue({
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          area: {
            name: mockArea.name,
            prefectureId: mockArea.prefectureId,
          },
          favorite: {
            genres: [],
            artists: [],
            parts: [],
          },
          createdAt: mockUser.createdAt,
          badges: [],
        },
      });

      const result = await service.updateUserArea(1, 2);

      expect(result.profile).toBeDefined();
      expect(userProfileRepository.findOne).toHaveBeenCalled();
      expect(userProfileRepository.save).toHaveBeenCalled();
    });

    it('should throw NotFoundException when user profile not found', async () => {
      jest.spyOn(userProfileRepository, 'findOne').mockResolvedValue(null);

      await expect(service.updateUserArea(1, 2)).rejects.toThrow(
        NotFoundException,
      );
    });
  });
});
