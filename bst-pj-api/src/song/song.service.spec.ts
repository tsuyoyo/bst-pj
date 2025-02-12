/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SongService } from './song.service';
import { Song } from '../entities/song.entity';
import { Artist } from '../entities/artist.entity';
import { NotFoundException } from '@nestjs/common';

describe('SongService', () => {
  let service: SongService;
  let songRepository: Repository<Song>;
  let artistRepository: Repository<Artist>;

  const mockSong = {
    id: 1,
    title: 'Test Song',
    description: 'Test Description',
    artistId: 1,
    updatedUserId: 1,
    artist: {
      id: 1,
      name: 'Test Artist',
      website: 'http://test.com',
      updatedUserId: 1,
    },
  };

  const mockArtist = {
    id: 1,
    name: 'Test Artist',
    website: 'http://test.com',
    updatedUserId: 1,
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
      ],
    }).compile();

    service = module.get<SongService>(SongService);
    songRepository = module.get<Repository<Song>>(getRepositoryToken(Song));
    artistRepository = module.get<Repository<Artist>>(
      getRepositoryToken(Artist),
    );
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createSong', () => {
    const createSongTest = async (): Promise<void> => {
      const createSongDto = {
        title: 'Test Song',
        artistId: 1,
        description: 'Test Description',
      };

      const result = await service.createSong(createSongDto, 1);

      expect(result.song).toBeDefined();
      expect(result.song!.title).toBe(createSongDto.title);
      expect(songRepository.create).toHaveBeenCalled();
      expect(songRepository.save).toHaveBeenCalled();
    };

    const createSongNotFoundTest = async (): Promise<void> => {
      jest.spyOn(artistRepository, 'findOne').mockResolvedValue(null);

      const createSongDto = {
        title: 'Test Song',
        artistId: 999,
        description: 'Test Description',
      };

      await expect(service.createSong(createSongDto, 1)).rejects.toThrow(
        NotFoundException,
      );
    };

    it('should create a song successfully', createSongTest);
    it(
      'should throw NotFoundException when artist not found',
      createSongNotFoundTest,
    );
  });

  describe('listSongs', () => {
    const listSongsTest = async (): Promise<void> => {
      const result = await service.listSongs(10, null);

      expect(result.songs).toBeDefined();
      expect(result.songs.length).toBe(1);
      expect(songRepository.findAndCount).toHaveBeenCalled();
    };

    it('should return list of songs', listSongsTest);
  });

  describe('getSong', () => {
    const getSongTest = async (): Promise<void> => {
      const result = await service.getSong(1);

      expect(result.song).toBeDefined();
      expect(result.song!.id).toBe(1);
      expect(songRepository.findOne).toHaveBeenCalled();
    };

    const getSongNotFoundTest = async (): Promise<void> => {
      jest.spyOn(songRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getSong(999)).rejects.toThrow(NotFoundException);
    };

    it('should return a song by id', getSongTest);
    it(
      'should throw NotFoundException when song not found',
      getSongNotFoundTest,
    );
  });

  describe('updateSong', () => {
    const updateSongTest = async (): Promise<void> => {
      const updateSongDto = {
        title: 'Updated Song',
        artistId: 1,
        description: 'Updated Description',
      };

      const result = await service.updateSong(1, updateSongDto, 1);

      expect(result.song).toBeDefined();
      expect(songRepository.save).toHaveBeenCalled();
    };

    const updateSongNotFoundTest = async (): Promise<void> => {
      jest.spyOn(songRepository, 'findOne').mockResolvedValue(null);

      const updateSongDto = {
        title: 'Updated Song',
        artistId: 1,
        description: 'Updated Description',
      };

      await expect(service.updateSong(999, updateSongDto, 1)).rejects.toThrow(
        NotFoundException,
      );
    };

    it('should update a song successfully', updateSongTest);
    it(
      'should throw NotFoundException when song not found',
      updateSongNotFoundTest,
    );
  });

  describe('deleteSong', () => {
    const deleteSongTest = async (): Promise<void> => {
      const result = await service.deleteSong(1);

      expect(result.success).toBe(true);
      expect(songRepository.remove).toHaveBeenCalled();
    };

    const deleteSongNotFoundTest = async (): Promise<void> => {
      jest.spyOn(songRepository, 'findOne').mockResolvedValue(null);

      await expect(service.deleteSong(999)).rejects.toThrow(NotFoundException);
    };

    it('should delete a song successfully', deleteSongTest);
    it(
      'should throw NotFoundException when song not found',
      deleteSongNotFoundTest,
    );
  });
});
