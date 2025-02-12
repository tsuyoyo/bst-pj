/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SongService } from './song.service';
import { Song } from '../entities/song.entity';
import { Artist } from '../entities/artist.entity';
import { Resource } from '../entities/resource.entity';
import { NotFoundException } from '@nestjs/common';
import { ResourceTargetType } from '../entities/types/resource-target-type.enum';

describe('SongService', () => {
  let service: SongService;
  let songRepository: Repository<Song>;
  let artistRepository: Repository<Artist>;
  let resourceRepository: Repository<Resource>;

  const mockArtist = {
    id: 1,
    name: 'Test Artist',
    website: 'http://test.com',
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockSong = {
    id: 1,
    title: 'Test Song',
    description: 'Test Description',
    artistId: 1,
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
    artist: mockArtist,
  };

  const mockResource = {
    id: 1,
    targetType: ResourceTargetType.SONG,
    targetId: 1,
    type: 'RESOURCE_TYPE_IMAGE',
    url: 'http://example.com/image.jpg',
    name: 'Test Resource',
    description: 'Test Resource Description',
    createdBy: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SongService,
        {
          provide: getRepositoryToken(Song),
          useValue: {
            create: jest.fn().mockReturnValue(mockSong),
            save: jest.fn().mockResolvedValue(mockSong),
            findOne: jest.fn().mockResolvedValue(mockSong),
            find: jest.fn().mockResolvedValue([mockSong]),
            findAndCount: jest.fn().mockResolvedValue([[mockSong], 1]),
            remove: jest.fn().mockResolvedValue(true),
          },
        },
        {
          provide: getRepositoryToken(Artist),
          useValue: {
            findOne: jest.fn().mockResolvedValue(mockArtist),
          },
        },
        {
          provide: getRepositoryToken(Resource),
          useValue: {
            findOne: jest.fn().mockResolvedValue(mockResource),
            find: jest.fn().mockResolvedValue([mockResource]),
            findAndCount: jest.fn().mockResolvedValue([[mockResource], 1]),
            save: jest.fn().mockResolvedValue(mockResource),
            remove: jest.fn().mockResolvedValue(true),
          },
        },
      ],
    }).compile();

    service = module.get<SongService>(SongService);
    songRepository = module.get<Repository<Song>>(getRepositoryToken(Song));
    artistRepository = module.get<Repository<Artist>>(
      getRepositoryToken(Artist),
    );
    resourceRepository = module.get<Repository<Resource>>(
      getRepositoryToken(Resource),
    );
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createSong', () => {
    it('should create a song successfully', async () => {
      const createSongDto = {
        title: 'Test Song',
        description: 'Test Description',
        artistId: 1,
      };

      const result = await service.createSong(createSongDto, 1);
      expect(result.song).toBeDefined();
      expect(result.song?.title).toBe(createSongDto.title);
    });

    it('should throw NotFoundException when artist not found', async () => {
      jest
        .spyOn(artistRepository, 'findOne')
        .mockResolvedValueOnce(null as never);

      const createSongDto = {
        title: 'Test Song',
        description: 'Test Description',
        artistId: 999,
      };

      await expect(service.createSong(createSongDto, 1)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('listSongs', () => {
    it('should return list of songs', async () => {
      const result = await service.listSongs(10, null);
      expect(result.songs).toBeDefined();
      expect(Array.isArray(result.songs)).toBe(true);
    });
  });

  describe('getSong', () => {
    it('should return a song by id', async () => {
      const result = await service.getSong(1);
      expect(result.song).toBeDefined();
      expect(result.song?.id).toBe(1);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest
        .spyOn(songRepository, 'findOne')
        .mockResolvedValueOnce(null as never);
      await expect(service.getSong(999)).rejects.toThrow(NotFoundException);
    });
  });

  describe('updateSong', () => {
    it('should update a song successfully', async () => {
      const updateSongDto = {
        title: 'Updated Song',
        description: 'Updated Description',
        artistId: 1,
      };

      const result = await service.updateSong(1, updateSongDto, 1);
      expect(result.song).toBeDefined();
      expect(result.song?.title).toBe(mockSong.title);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest
        .spyOn(songRepository, 'findOne')
        .mockResolvedValueOnce(null as never);

      const updateSongDto = {
        title: 'Updated Song',
        description: 'Updated Description',
        artistId: 1,
      };

      await expect(service.updateSong(999, updateSongDto, 1)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('deleteSong', () => {
    it('should delete a song successfully', async () => {
      const result = await service.deleteSong(1);
      expect(result.success).toBe(true);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest
        .spyOn(songRepository, 'findOne')
        .mockResolvedValueOnce(null as never);
      await expect(service.deleteSong(999)).rejects.toThrow(NotFoundException);
    });
  });

  describe('addSongResource', () => {
    it('should add a resource to a song', async () => {
      const result = await service.addSongResource(1, 1);
      expect(result.success).toBe(true);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest
        .spyOn(songRepository, 'findOne')
        .mockResolvedValueOnce(null as never);
      await expect(service.addSongResource(999, 1)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('listSongResources', () => {
    it('should return list of song resources', async () => {
      const result = await service.listSongResources(1, 10, 0);
      expect(result.resources).toBeDefined();
      expect(Array.isArray(result.resources)).toBe(true);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest
        .spyOn(songRepository, 'findOne')
        .mockResolvedValueOnce(null as never);
      await expect(service.listSongResources(999, 10, 0)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('deleteSongResource', () => {
    it('should delete a resource from a song', async () => {
      const result = await service.deleteSongResource(1, 1);
      expect(result.success).toBe(true);
    });

    it('should throw NotFoundException when song not found', async () => {
      jest.spyOn(songRepository, 'findOne').mockResolvedValue(null);
      jest.spyOn(resourceRepository, 'findOne').mockResolvedValue(null);

      await expect(service.deleteSongResource(999, 1)).rejects.toThrow(
        NotFoundException,
      );
    });

    it('should throw NotFoundException when resource not found', async () => {
      jest.spyOn(resourceRepository, 'findOne').mockResolvedValue(null);

      await expect(service.deleteSongResource(1, 999)).rejects.toThrow(
        NotFoundException,
      );
    });
  });
});
