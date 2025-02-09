/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { GenreService } from './genre.service';
import { Genre } from '../entities/genre.entity';
import { ConflictException, NotFoundException } from '@nestjs/common';

describe('GenreService', () => {
  let service: GenreService;
  let repository: Repository<Genre>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        GenreService,
        {
          provide: getRepositoryToken(Genre),
          useValue: {
            create: jest.fn(),
            save: jest.fn(),
            find: jest.fn(),
            findOne: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<GenreService>(GenreService);
    repository = module.get<Repository<Genre>>(getRepositoryToken(Genre));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createGenre', () => {
    it('should create a new genre successfully', async () => {
      const genreName = 'Rock';
      const userId = 1;
      const mockGenre = {
        id: 1,
        name: genreName,
        updatedUserId: userId,
        createdAt: new Date(),
        updatedAt: new Date(),
      };

      (repository.findOne as jest.Mock).mockResolvedValue(null);
      (repository.create as jest.Mock).mockReturnValue(mockGenre);
      (repository.save as jest.Mock).mockResolvedValue(mockGenre);

      const result = await service.createGenre(genreName, userId);

      expect(result).toEqual(mockGenre);
      expect(repository.findOne).toHaveBeenCalledWith({
        where: { name: genreName },
      });
      expect(repository.create).toHaveBeenCalledWith({
        name: genreName,
        updatedUserId: userId,
      });
      expect(repository.save).toHaveBeenCalledWith(mockGenre);
    });

    it('should throw ConflictException when genre already exists', async () => {
      const genreName = 'Rock';
      const userId = 1;
      const existingGenre = {
        id: 1,
        name: genreName,
        updatedUserId: userId,
      };

      (repository.findOne as jest.Mock).mockResolvedValue(existingGenre);

      await expect(service.createGenre(genreName, userId)).rejects.toThrow(
        new ConflictException(`Genre "${genreName}" already exists`),
      );
    });
  });

  describe('listGenres', () => {
    it('should return all genres', async () => {
      const mockGenres = [
        {
          id: 1,
          name: 'Rock',
          updatedUserId: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          id: 2,
          name: 'Jazz',
          updatedUserId: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ];

      (repository.find as jest.Mock).mockResolvedValue(mockGenres);

      const result = await service.listGenres();

      expect(result).toEqual(mockGenres);
      expect(repository.find).toHaveBeenCalled();
    });
  });

  describe('updateGenre', () => {
    it('should update genre successfully', async () => {
      const genreId = 1;
      const newName = 'Updated Rock';
      const userId = 1;
      const existingGenre = {
        id: genreId,
        name: 'Rock',
        updatedUserId: userId,
        createdAt: new Date(),
        updatedAt: new Date(),
      };
      const updatedGenre = {
        ...existingGenre,
        name: newName,
        updatedUserId: userId,
      };

      (repository.findOne as jest.Mock)
        .mockResolvedValueOnce(existingGenre) // First call for checking existence
        .mockResolvedValueOnce(null); // Second call for checking name conflict
      (repository.save as jest.Mock).mockResolvedValue(updatedGenre);

      const result = await service.updateGenre(genreId, newName, userId);

      expect(result).toEqual(updatedGenre);
      expect(repository.findOne).toHaveBeenCalledWith({
        where: { id: genreId },
      });
      expect(repository.save).toHaveBeenCalledWith({
        ...existingGenre,
        name: newName,
        updatedUserId: userId,
      });
    });

    it('should throw NotFoundException when genre does not exist', async () => {
      const genreId = 999;
      const newName = 'Updated Rock';
      const userId = 1;

      (repository.findOne as jest.Mock).mockResolvedValue(null);

      await expect(
        service.updateGenre(genreId, newName, userId),
      ).rejects.toThrow(
        new NotFoundException('Not found the genre you want to update'),
      );
    });

    it('should throw ConflictException when new name already exists', async () => {
      const genreId = 1;
      const newName = 'Jazz';
      const userId = 1;
      const existingGenre = {
        id: genreId,
        name: 'Rock',
        updatedUserId: userId,
      };
      const conflictingGenre = {
        id: 2,
        name: newName,
        updatedUserId: userId,
      };

      (repository.findOne as jest.Mock)
        .mockResolvedValueOnce(existingGenre) // First call for checking existence
        .mockResolvedValueOnce(conflictingGenre); // Second call for checking name conflict

      await expect(
        service.updateGenre(genreId, newName, userId),
      ).rejects.toThrow(
        new ConflictException(`Genre "${newName}"already exists`),
      );
    });
  });
});
