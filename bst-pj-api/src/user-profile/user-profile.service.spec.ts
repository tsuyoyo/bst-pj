import { Test, TestingModule } from '@nestjs/testing';
import { UserProfileService } from './user-profile.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { Area } from '../entities/area.entity';
import { GetUserProfileResponse } from '../proto/bst/v1/user_profile_service';
import { UserGenreService } from '../user-genre/user-genre.service';
import { UserPartService } from '../user-part/user-part.service';
import { UserArtistService } from '../user-artist/user-artist.service';
import { UserService } from '../user/user.service';

describe('UserProfileService', () => {
  let service: UserProfileService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserProfileService,
        {
          provide: getRepositoryToken(UserProfile),
          useValue: {
            findOne: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {},
        },
        {
          provide: getRepositoryToken(Area),
          useValue: {},
        },
        {
          provide: UserGenreService,
          useValue: {
            getUserPreferredGenres: jest.fn(),
          },
        },
        {
          provide: UserPartService,
          useValue: {
            getUserPreferredParts: jest.fn(),
          },
        },
        {
          provide: UserArtistService,
          useValue: {
            getUserPreferredArtists: jest.fn(),
          },
        },
        {
          provide: UserService,
          useValue: {},
        },
      ],
    }).compile();

    service = module.get<UserProfileService>(UserProfileService);
  });

  it('should return user profile response', async () => {
    const userId = 1;
    const mockProfile: GetUserProfileResponse = {
      profile: {
        user: { id: userId, name: 'Test User', icon: '' },
        area: { name: 'Test Area', prefectureId: 1 },
        favorite: {
          genres: [],
          artists: [],
          parts: [],
        },
        introduction: '',
        createdAt: new Date(),
        badges: [],
      },
    };
    jest.spyOn(service, 'getUserProfile').mockResolvedValue(mockProfile);

    expect(await service.getUserProfile(userId)).toBe(mockProfile);
  });
});
