import { Test, TestingModule } from '@nestjs/testing';
import { UserProfileService } from './user-profile.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { UserGenreService } from '../user-genre/user-genre.service';
import { UserPartService } from '../user-part/user-part.service';
import { UserArtistService } from '../user-artist/user-artist.service';
import { UserService } from '../user/user.service';
import { UserPrefectureService } from '../user-prefecture/user-prefecture.service';

describe('UserProfileService', () => {
  let service: UserProfileService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserProfileService,
        {
          provide: getRepositoryToken(UserProfile),
          useValue: {
            findOne: jest.fn().mockResolvedValue({
              id: 1,
              userId: 1,
              bio: 'Test Bio',
              user: {
                id: 1,
                name: 'Test User',
                iconUrl: '',
                createdAt: new Date(),
              },
            }),
          },
        },
        {
          provide: UserGenreService,
          useValue: {
            getUserPreferredGenres: jest.fn().mockResolvedValue([]),
          },
        },
        {
          provide: UserPartService,
          useValue: {
            getUserPreferredParts: jest.fn().mockResolvedValue([]),
          },
        },
        {
          provide: UserArtistService,
          useValue: {
            getUserPreferredArtists: jest.fn().mockResolvedValue([]),
          },
        },
        {
          provide: UserService,
          useValue: {
            mapUserToProto: jest.fn().mockReturnValue({
              id: 1,
              name: 'Test User',
              icon: '',
            }),
          },
        },
        {
          provide: UserPrefectureService,
          useValue: {
            getUserPrefectures: jest
              .fn()
              .mockResolvedValue([{ name: 'Test Area', prefectureId: 1 }]),
          },
        },
      ],
    }).compile();

    service = module.get<UserProfileService>(UserProfileService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  it('should return user profile response', async () => {
    const userId = 1;
    const result = await service.getUserProfile(userId);

    expect(result).toBeDefined();
    expect(result.profile).toBeDefined();
    if (result.profile) {
      expect(result.profile.user).toEqual({
        id: 1,
        name: 'Test User',
        icon: '',
      });
      expect(result.profile.areas).toEqual([
        { name: 'Test Area', prefectureId: 1 },
      ]);
      expect(result.profile.favorite).toBeDefined();
      expect(result.profile.introduction).toBe('Test Bio');
    }
  });
});
