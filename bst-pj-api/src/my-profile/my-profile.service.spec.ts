/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { MyProfileService } from './my-profile.service';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { UserGenre } from '../entities/user-genre.entity';
import { UserPart } from '../entities/user-part.entity';
import { UserArtist } from '../entities/user-artist.entity';
import { UserProfileService } from '../user-profile/user-profile.service';
import { NotFoundException } from '@nestjs/common';
import { Area } from '../entities/area.entity';
import { GetUserProfileResponse } from '../proto/bst/v1/user_profile_service';
import { Genre } from '../entities/genre.entity';
import { UserPrefectureService } from '../user-prefecture/user-prefecture.service';
import { UserService } from '../user/user.service';
import { Area as ProtoArea } from '../proto/bst/v1/area';

describe('MyProfileService', () => {
  let service: MyProfileService;
  let userRepository: Repository<User>;
  let userProfileService: UserProfileService;
  let userGenreRepository: Repository<UserGenre>;
  let userPrefectureService: UserPrefectureService;

  const mockUser = {
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
  } as User;

  const mockArea: Area = {
    id: 1,
    name: 'Test Area',
    prefectureId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockGenre: Genre = {
    id: 1,
    name: 'Test Genre',
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockUserProfile: UserProfile = {
    id: 1,
    userId: 1,
    bio: 'Test Bio',
    createdAt: new Date(),
    updatedAt: new Date(),
    user: mockUser,
  };

  const mockUserProfileResponse: GetUserProfileResponse = {
    profile: {
      user: {
        id: mockUser.id,
        name: mockUser.name,
        icon: mockUser.iconUrl || '',
      },
      introduction: mockUserProfile.bio,
      areas: [
        {
          name: mockArea.name,
          prefectureId: mockArea.prefectureId,
        },
      ],
      favorite: {
        genres: [],
        artists: [],
        parts: [],
      },
      badges: [],
      createdAt: new Date(),
    },
  };

  const emptyUserProfileResponse: GetUserProfileResponse = {
    profile: {
      user: {
        id: 0,
        name: '',
        icon: '',
      },
      introduction: '',
      areas: [],
      favorite: {
        genres: [],
        artists: [],
        parts: [],
      },
      badges: [],
      createdAt: new Date(),
    },
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
          },
        },
        {
          provide: getRepositoryToken(UserGenre),
          useValue: {
            find: jest.fn(),
            delete: jest.fn(),
            save: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(UserPart),
          useValue: {
            find: jest.fn(),
            delete: jest.fn(),
            save: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(UserArtist),
          useValue: {
            find: jest.fn(),
            delete: jest.fn(),
            save: jest.fn(),
          },
        },
        {
          provide: UserProfileService,
          useValue: {
            getUserProfile: jest.fn(),
          },
        },
        {
          provide: UserService,
          useValue: {
            mapUserToProto: jest.fn(),
          },
        },
        {
          provide: UserPrefectureService,
          useValue: {
            getUserPrefectures: jest.fn(),
            updateUserPrefectures: jest.fn(),
            getUserPrefecturesFormatted: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<MyProfileService>(MyProfileService);
    userRepository = module.get<Repository<User>>(getRepositoryToken(User));
    userProfileService = module.get<UserProfileService>(UserProfileService);
    userGenreRepository = module.get<Repository<UserGenre>>(
      getRepositoryToken(UserGenre),
    );
    userPrefectureService = module.get<UserPrefectureService>(
      UserPrefectureService,
    );
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('getMyProfile', () => {
    it('should return user profile successfully', async () => {
      jest
        .spyOn(userProfileService, 'getUserProfile')
        .mockResolvedValue(mockUserProfileResponse);
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser);

      const result = await service.getMyProfile(mockUser.id);

      expect(result).toEqual({
        profile: mockUserProfileResponse.profile,
        email: mockUser.email,
      });
      expect(userProfileService.getUserProfile).toHaveBeenCalledWith(
        mockUser.id,
      );
      expect(userRepository.findOne).toHaveBeenCalledWith({
        where: { id: mockUser.id },
      });
    });

    it('should throw NotFoundException when user profile not found', async () => {
      jest
        .spyOn(userProfileService, 'getUserProfile')
        .mockResolvedValue(emptyUserProfileResponse);

      await expect(service.getMyProfile(mockUser.id)).rejects.toThrow(
        NotFoundException,
      );
    });

    it('should throw NotFoundException when user not found', async () => {
      jest
        .spyOn(userProfileService, 'getUserProfile')
        .mockResolvedValue(mockUserProfileResponse);
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getMyProfile(mockUser.id)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateUserGenres', () => {
    it('should update user genres successfully', async () => {
      const userId = 1;
      const genreIds = [1];
      const mockUserGenre: UserGenre = {
        id: 1,
        userId,
        genreId: genreIds[0],
        createdAt: new Date(),
        user: mockUser,
        genre: mockGenre,
      };

      jest
        .spyOn(userGenreRepository, 'delete')
        .mockResolvedValue({ raw: [], affected: 1 });
      jest.spyOn(userGenreRepository, 'save').mockResolvedValue(mockUserGenre);
      jest.spyOn(userProfileService, 'getUserProfile').mockResolvedValue({
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          areas: [
            {
              name: mockArea.name,
              prefectureId: mockArea.prefectureId,
            },
          ],
          favorite: {
            genres: [
              {
                id: genreIds[0],
                name: 'Test Genre',
              },
            ],
            artists: [],
            parts: [],
          },
          badges: [],
          createdAt: new Date(),
        },
      });

      const result = await service.updateUserGenres(userId, genreIds);

      expect(result).toEqual({
        success: true,
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          areas: [
            {
              name: mockArea.name,
              prefectureId: mockArea.prefectureId,
            },
          ],
          favorite: {
            genres: [
              {
                id: genreIds[0],
                name: 'Test Genre',
              },
            ],
            artists: [],
            parts: [],
          },
          badges: [],
          createdAt: expect.any(Date),
        },
      });
      expect(userGenreRepository.delete).toHaveBeenCalledWith({ userId });
      expect(userGenreRepository.save).toHaveBeenCalledWith([
        { userId, genreId: genreIds[0] },
      ]);
      expect(userProfileService.getUserProfile).toHaveBeenCalledWith(userId);
    });
  });

  describe('updateUserPrefectures', () => {
    it('should update user prefectures successfully', async () => {
      const userId = 1;
      const prefectureIds = [1];
      const mockPrefectures: ProtoArea[] = [
        {
          name: mockArea.name,
          prefectureId: mockArea.prefectureId,
        },
      ];

      jest
        .spyOn(userPrefectureService, 'updateUserPrefectures')
        .mockResolvedValue(mockPrefectures);

      jest.spyOn(userProfileService, 'getUserProfile').mockResolvedValue({
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          areas: mockPrefectures,
          favorite: {
            genres: [],
            artists: [],
            parts: [],
          },
          badges: [],
          createdAt: new Date(),
        },
      });

      const result = await service.updateUserPrefectures(userId, prefectureIds);

      expect(result).toEqual({
        success: true,
        profile: {
          user: {
            id: mockUser.id,
            name: mockUser.name,
            icon: mockUser.iconUrl || '',
          },
          introduction: mockUserProfile.bio,
          areas: mockPrefectures,
          favorite: {
            genres: [],
            artists: [],
            parts: [],
          },
          badges: [],
          createdAt: expect.any(Date),
        },
      });

      expect(userPrefectureService.updateUserPrefectures).toHaveBeenCalledWith(
        userId,
        prefectureIds,
        undefined,
      );
      expect(userProfileService.getUserProfile).toHaveBeenCalledWith(userId);
    });
  });

  describe('getUserPrefectures', () => {
    it('should get user prefectures successfully', async () => {
      const userId = 1;
      const mockPrefectureData = {
        prefectureIds: [1],
        primaryPrefectureId: 1,
        prefectures: [
          {
            name: 'Test Area',
            prefectureId: 1,
          },
        ] as ProtoArea[],
      };

      jest
        .spyOn(userPrefectureService, 'getUserPrefecturesFormatted')
        .mockResolvedValue(mockPrefectureData);

      const result = await service.getUserPrefectures(userId);

      expect(result).toEqual({
        prefectureIds: [1],
        primaryPrefectureId: 1,
      });

      expect(
        userPrefectureService.getUserPrefecturesFormatted,
      ).toHaveBeenCalledWith(userId);
    });
  });
});
