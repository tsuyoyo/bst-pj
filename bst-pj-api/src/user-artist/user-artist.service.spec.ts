import { Test, TestingModule } from '@nestjs/testing';
import { UserArtistService } from './user-artist.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { UserArtist } from '../entities/user-artist.entity';
import { ArtistService } from '../artist/artist.service';

describe('UserArtistService', () => {
  let service: UserArtistService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserArtistService,
        {
          provide: getRepositoryToken(UserArtist),
          useValue: {
            find: jest.fn(),
          },
        },
        {
          provide: ArtistService,
          useValue: {
            getArtists: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<UserArtistService>(UserArtistService);
  });

  it('should return user preferred artists', async () => {
    const userId = 1;
    const mockUserArtists = [
      {
        id: 1,
        userId: 1,
        artistId: 1,
        createdAt: new Date(),
        updatedAt: new Date(),
        user: {
          id: 1,
          name: 'Test User',
          email: 'test@example.com',
          password: 'hashedpassword',
          externalId: null,
          externalService: null,
          iconUrl: null,
          profilePictureUrl: null,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        artist: {
          id: 1,
          name: 'Artist 1',
          website: '',
          genres: [],
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
      {
        id: 2,
        userId: 1,
        artistId: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
        user: {
          id: 1,
          name: 'Test User',
          email: 'test@example.com',
          password: 'hashedpassword',
          externalId: null,
          externalService: null,
          iconUrl: null,
          profilePictureUrl: null,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        artist: {
          id: 2,
          name: 'Artist 2',
          website: '',
          genres: [],
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
    ];
    const mockArtistsResponse = {
      artists: [
        { id: 1, name: 'Artist 1', website: '', genres: [] },
        { id: 2, name: 'Artist 2', website: '', genres: [] },
      ],
    };

    jest
      .spyOn(service['userArtistRepository'], 'find')
      .mockResolvedValue(mockUserArtists);
    jest
      .spyOn(service['artistService'], 'getArtists')
      .mockResolvedValue(mockArtistsResponse);

    const result = await service.getUserPreferredArtists(userId);
    expect(result).toEqual(mockArtistsResponse.artists);
  });
});
