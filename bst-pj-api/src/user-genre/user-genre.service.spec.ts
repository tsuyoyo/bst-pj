import { Test, TestingModule } from '@nestjs/testing';
import { UserGenreService } from './user-genre.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { UserGenre } from '../entities/user-genre.entity';

describe('UserGenreService', () => {
  let service: UserGenreService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserGenreService,
        {
          provide: getRepositoryToken(UserGenre),
          useValue: {
            find: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<UserGenreService>(UserGenreService);
  });

  it('should return user preferred genres', async () => {
    const userId = 1;
    const mockUserGenres: UserGenre[] = [
      {
        id: 1,
        userId: 1,
        genreId: 1,
        createdAt: new Date(),
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
        genre: {
          id: 1,
          name: 'Genre 1',
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
      {
        id: 2,
        userId: 1,
        genreId: 2,
        createdAt: new Date(),
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
        genre: {
          id: 2,
          name: 'Genre 2',
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
    ];

    jest
      .spyOn(service['userGenreRepository'], 'find')
      .mockResolvedValue(mockUserGenres);

    const result = await service.getUserPreferredGenres(userId);
    expect(result).toEqual(
      mockUserGenres.map((userGenre) => ({
        id: userGenre.genre.id,
        name: userGenre.genre.name,
      })),
    );
  });
});
