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
import { NotFoundException } from '@nestjs/common';

describe('GenreController', () => {
  let genreController: GenreController;

  const mockGenreService = {
    createGenre: jest.fn(),
    listGenres: jest.fn(),
    updateGenre: jest.fn(),
    getGenre: jest.fn(),
  };

  const mockJwtService = {
    verifyAsync: jest.fn(),
  };

  const mockUserRepository = {
    findOne: jest.fn(),
  };

  const mockUser: User = {
    id: 1,
    name: 'testuser',
    email: 'test@example.com',
    password: 'password',
    externalId: null,
    externalService: null,
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockGenre: Genre = {
    id: 1,
    name: 'Rock',
    createdAt: new Date(),
    updatedAt: new Date(),
    updatedUserId: 1,
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
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    genreController = module.get<GenreController>(GenreController);
  });

  describe('createGenre', () => {
    it('should create a genre', async () => {
      const createGenreDto: CreateGenreDto = { name: 'Rock' };
      const result: Genre = { id: 1, name: 'Rock' } as Genre;

      mockGenreService.createGenre.mockResolvedValue(result);

      expect(
        await genreController.createGenre(createGenreDto, mockUser),
      ).toEqual({
        genre: { id: 1, name: 'Rock' },
      });
      expect(mockGenreService.createGenre).toHaveBeenCalledWith('Rock', 1);
    });
  });

  describe('listGenres', () => {
    it('should return a list of genres', async () => {
      const result: Genre[] = [{ id: 1, name: 'Rock' } as Genre];

      mockGenreService.listGenres.mockResolvedValue(result);

      expect(await genreController.listGenres()).toEqual({
        genres: [{ id: 1, name: 'Rock' }],
      });
    });
  });

  describe('getGenre', () => {
    it('should return a genre by id', async () => {
      mockGenreService.getGenre.mockResolvedValue(mockGenre);

      expect(await genreController.getGenre(1)).toEqual({
        genre: { id: 1, name: 'Rock' },
      });
      expect(mockGenreService.getGenre).toHaveBeenCalledWith(1);
    });

    it('should throw NotFoundException when genre not found', async () => {
      mockGenreService.getGenre.mockResolvedValue(null);

      await expect(genreController.getGenre(2)).rejects.toThrow(
        NotFoundException,
      );
      expect(mockGenreService.getGenre).toHaveBeenCalledWith(2);
    });
  });

  describe('updateGenre', () => {
    it('should update a genre', async () => {
      const updateGenreDto: UpdateGenreDto = {
        name: 'Pop',
      };
      const result: Genre = { id: 1, name: 'Pop' } as Genre;

      mockGenreService.updateGenre.mockResolvedValue(result);

      expect(
        await genreController.updateGenre('1', updateGenreDto, mockUser),
      ).toEqual({
        genre: { id: 1, name: 'Pop' },
      });
      expect(mockGenreService.updateGenre).toHaveBeenCalledWith(1, 'Pop', 1);
    });
  });
});
