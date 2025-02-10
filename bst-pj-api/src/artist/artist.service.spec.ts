/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { DataSource, QueryRunner, Repository } from 'typeorm';
import { ArtistService } from './artist.service';
import { Artist } from '../entities/artist.entity';
import { ArtistGenre } from '../entities/artist-genre.entity';
import { Genre } from '../entities/genre.entity';
import { NotFoundException } from '@nestjs/common';

describe('ArtistService', () => {
  let service: ArtistService;
  let artistRepository: Repository<Artist>;
  let artistGenreRepository: Repository<ArtistGenre>;
  let genreRepository: Repository<Genre>;
  let dataSource: DataSource;
  let queryRunner: QueryRunner;

  const mockQueryRunner = {
    connect: jest.fn(),
    startTransaction: jest.fn(),
    commitTransaction: jest.fn(),
    rollbackTransaction: jest.fn(),
    release: jest.fn(),
    manager: {
      save: jest.fn(),
      delete: jest.fn(),
      findOne: jest.fn(),
    },
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ArtistService,
        {
          provide: getRepositoryToken(Artist),
          useValue: {
            create: jest.fn(),
            save: jest.fn(),
            find: jest.fn(),
            findOne: jest.fn(),
            remove: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(ArtistGenre),
          useValue: {
            create: jest.fn(),
            save: jest.fn(),
            find: jest.fn().mockResolvedValue([
              {
                genre: { id: 1, name: 'Rock' },
              },
            ]),
            delete: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(Genre),
          useValue: {
            findOne: jest.fn(),
          },
        },
        {
          provide: DataSource,
          useValue: {
            createQueryRunner: jest.fn().mockReturnValue(mockQueryRunner),
          },
        },
      ],
    }).compile();

    service = module.get<ArtistService>(ArtistService);
    artistRepository = module.get<Repository<Artist>>(
      getRepositoryToken(Artist),
    );
    artistGenreRepository = module.get<Repository<ArtistGenre>>(
      getRepositoryToken(ArtistGenre),
    );
    genreRepository = module.get<Repository<Genre>>(getRepositoryToken(Genre));
    dataSource = module.get<DataSource>(DataSource);
    queryRunner = dataSource.createQueryRunner();
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createArtist', () => {
    it('should create an artist with genres', async () => {
      const name = 'Test Artist';
      const website = 'http://test.com';
      const userId = 1;
      const genreIds = [1, 2];

      const mockArtist = {
        id: 1,
        name,
        website,
        updatedUserId: userId,
      };

      const mockGenre = { id: 1, name: 'Rock' };

      jest
        .spyOn(artistRepository, 'create')
        .mockReturnValue(mockArtist as Artist);
      jest
        .spyOn(genreRepository, 'findOne')
        .mockResolvedValue(mockGenre as Genre);
      jest
        .spyOn(artistGenreRepository, 'create')
        .mockReturnValue({ artistId: 1, genreId: 1 } as ArtistGenre);
      mockQueryRunner.manager.save.mockResolvedValue(mockArtist);

      const result = await service.createArtist(
        name,
        website,
        userId,
        genreIds,
      );

      expect(result).toEqual({
        artist: {
          id: 1,
          name,
          website,
          updatedUserId: userId,
          genres: [{ id: 1, name: 'Rock' }],
        },
      });
      expect(queryRunner.startTransaction).toHaveBeenCalled();
      expect(queryRunner.commitTransaction).toHaveBeenCalled();
      expect(queryRunner.release).toHaveBeenCalled();
    });

    it('should rollback transaction on error', async () => {
      const name = 'Test Artist';
      const website = 'http://test.com';
      const userId = 1;
      const genreIds = [1];

      const mockArtist = {
        id: 1,
        name,
        website,
        updatedUserId: userId,
      };

      jest
        .spyOn(artistRepository, 'create')
        .mockReturnValue(mockArtist as Artist);
      mockQueryRunner.manager.save.mockRejectedValue(new Error('DB Error'));

      await expect(
        service.createArtist(name, website, userId, genreIds),
      ).rejects.toThrow('DB Error');

      expect(queryRunner.rollbackTransaction).toHaveBeenCalled();
      expect(queryRunner.release).toHaveBeenCalled();
    });
  });

  describe('listArtists', () => {
    it('should return a list of artists', async () => {
      const mockArtists = [
        {
          id: 1,
          name: 'Artist 1',
          website: 'http://artist1.com',
          updatedUserId: 1,
        },
      ];

      jest
        .spyOn(artistRepository, 'find')
        .mockResolvedValue(mockArtists as Artist[]);

      const result = await service.listArtists();

      expect(result).toEqual({
        artists: mockArtists.map((artist) => ({
          ...artist,
          genres: [{ id: 1, name: 'Rock' }],
        })),
        nextPageToken: '',
        totalSize: 1,
      });
    });
  });

  describe('getArtist', () => {
    it('should return an artist by id', async () => {
      const artistId = 1;
      const mockArtist = {
        id: artistId,
        name: 'Artist 1',
        website: 'http://artist1.com',
        updatedUserId: 1,
      };

      jest
        .spyOn(artistRepository, 'findOne')
        .mockResolvedValue(mockArtist as Artist);

      const result = await service.getArtist(artistId);

      expect(result).toEqual({
        artist: {
          ...mockArtist,
          genres: [{ id: 1, name: 'Rock' }],
        },
      });
    });

    it('should throw NotFoundException when artist not found', async () => {
      const artistId = 999;

      jest.spyOn(artistRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getArtist(artistId)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateArtist', () => {
    it('should update an artist', async () => {
      const artistId = 1;
      const userId = 1;
      const updateDto = {
        name: 'Updated Artist',
        description: 'Updated Description',
        website: 'http://updated.com',
        genreIds: [2, 3],
      };

      const mockArtist = {
        id: artistId,
        name: 'Original Artist',
        website: 'http://original.com',
        updatedUserId: userId,
      };

      const mockUpdatedArtist = {
        ...mockArtist,
        name: updateDto.name,
        website: updateDto.website,
      };

      const mockGenre = { id: 2, name: 'Pop' };

      mockQueryRunner.manager.findOne.mockResolvedValue(mockArtist);
      mockQueryRunner.manager.save.mockResolvedValue(mockUpdatedArtist);
      jest
        .spyOn(genreRepository, 'findOne')
        .mockResolvedValue(mockGenre as Genre);

      const result = await service.updateArtist(artistId, userId, updateDto);

      expect(result).toEqual({
        artist: {
          ...mockUpdatedArtist,
          genres: [{ id: 1, name: 'Rock' }],
        },
      });
      expect(queryRunner.startTransaction).toHaveBeenCalled();
      expect(queryRunner.commitTransaction).toHaveBeenCalled();
      expect(queryRunner.release).toHaveBeenCalled();
    });

    it('should throw NotFoundException when artist not found', async () => {
      const artistId = 999;
      const userId = 1;
      const updateDto = {
        name: 'Updated Artist',
        description: 'Updated Description',
        website: 'http://updated.com',
        genreIds: [2, 3],
      };

      mockQueryRunner.manager.findOne.mockResolvedValue(null);

      await expect(
        service.updateArtist(artistId, userId, updateDto),
      ).rejects.toThrow(NotFoundException);

      expect(queryRunner.rollbackTransaction).toHaveBeenCalled();
      expect(queryRunner.release).toHaveBeenCalled();
    });
  });

  describe('deleteArtist', () => {
    it('should delete an artist', async () => {
      const artistId = 1;
      const mockArtist = {
        id: artistId,
        name: 'Artist to Delete',
        website: 'http://delete.com',
        updatedUserId: 1,
      };

      jest
        .spyOn(artistRepository, 'findOne')
        .mockResolvedValue(mockArtist as Artist);
      jest
        .spyOn(artistRepository, 'remove')
        .mockResolvedValue(mockArtist as Artist);

      const result = await service.deleteArtist(artistId);

      expect(result).toEqual({ success: true });
    });

    it('should throw NotFoundException when artist not found', async () => {
      const artistId = 999;

      jest.spyOn(artistRepository, 'findOne').mockResolvedValue(null);

      await expect(service.deleteArtist(artistId)).rejects.toThrow(
        NotFoundException,
      );
    });
  });
});
