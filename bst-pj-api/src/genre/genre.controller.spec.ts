import { Test, TestingModule } from '@nestjs/testing';
import { GenreController } from './genre.controller';
import { GenreService } from './genre.service';
import { CreateGenreDto } from './dto/create-genre.dto';
import { UpdateGenreDto } from './dto/update-genre.dto';
import { User } from '../entities/user.entity';
import { Genre } from '../entities/genre.entity';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('GenreController', () => {
  let genreController: GenreController;

  const mockGenreService = {
    createGenre: jest.fn(),
    listGenres: jest.fn(),
    updateGenre: jest.fn(),
  };

  const mockJwtService = {
    verifyAsync: jest.fn(),
  };

  const mockUserRepository = {
    findOne: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GenreController],
      providers: [
        {
          provide: GenreService,
          useValue: mockGenreService,
        },
        {
          provide: JwtService,
          useValue: mockJwtService,
        },
        {
          provide: getRepositoryToken(User),
          useValue: mockUserRepository,
        },
        JwtAuthGuard,
      ],
    }).compile();

    genreController = module.get<GenreController>(GenreController);
  });

  describe('createGenre', () => {
    it('should create a genre', async () => {
      const createGenreDto: CreateGenreDto = { name: 'New Genre' };
      const user: User = { id: 1, email: 'test@example.com' } as User;
      const result: Genre = { id: 1, name: 'New Genre' } as Genre;

      mockGenreService.createGenre.mockResolvedValue(result);

      expect(await genreController.createGenre(createGenreDto, user)).toEqual({
        genre: { id: 1, name: 'New Genre' },
      });
      expect(mockGenreService.createGenre).toHaveBeenCalledWith(
        'New Genre',
        user.id,
      );
    });
  });

  describe('listGenres', () => {
    it('should return a list of genres', async () => {
      const result: Genre[] = [
        { id: 1, name: 'Genre 1' } as Genre,
        { id: 2, name: 'Genre 2' } as Genre,
      ];

      mockGenreService.listGenres.mockResolvedValue(result);

      expect(await genreController.listGenres()).toEqual({
        genres: [
          { id: 1, name: 'Genre 1' },
          { id: 2, name: 'Genre 2' },
        ],
      });
    });
  });

  describe('updateGenre', () => {
    it('should update a genre', async () => {
      const updateGenreDto: UpdateGenreDto = {
        name: 'Updated Genre',
        id: 0,
      };
      const user: User = { id: 1, email: 'test@example.com' } as User;
      const result: Genre = { id: 1, name: 'Updated Genre' } as Genre;

      mockGenreService.updateGenre.mockResolvedValue(result);

      expect(
        await genreController.updateGenre('1', updateGenreDto, user),
      ).toEqual({
        genre: { id: 1, name: 'Updated Genre' },
      });
      expect(mockGenreService.updateGenre).toHaveBeenCalledWith(
        1,
        'Updated Genre',
        user.id,
      );
    });
  });
});
