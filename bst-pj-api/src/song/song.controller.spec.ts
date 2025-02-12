/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { SongController } from './song.controller';
import { SongService } from './song.service';
import { CreateSongDto } from './dto/create-song.dto';
import { UpdateSongDto } from './dto/update-song.dto';
import { User } from '../entities/user.entity';
import { ExternalService } from '../entities/types/external-service.enum';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('SongController', () => {
  let controller: SongController;
  let service: SongService;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'password',
    externalId: '',
    externalService: ExternalService.GOOGLE,
    iconUrl: '',
    profilePictureUrl: '',
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockSong = {
    id: 1,
    title: 'Test Song',
    artist: {
      id: 1,
      name: 'Test Artist',
      website: 'http://test.com',
      genres: [],
    },
    resources: [],
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SongController],
      providers: [
        {
          provide: SongService,
          useValue: {
            createSong: jest.fn().mockResolvedValue({ song: mockSong }),
            listSongs: jest
              .fn()
              .mockResolvedValue({ songs: [mockSong], nextPageToken: null }),
            getSong: jest.fn().mockResolvedValue({ song: mockSong }),
            updateSong: jest.fn().mockResolvedValue({ song: mockSong }),
            deleteSong: jest.fn().mockResolvedValue({ success: true }),
          },
        },
        JwtAuthGuard,
        {
          provide: JwtService,
          useValue: {
            sign: jest.fn(),
            verify: jest.fn(),
            verifyAsync: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn().mockResolvedValue(mockUser),
          },
        },
      ],
    }).compile();

    controller = module.get<SongController>(SongController);
    service = module.get<SongService>(SongService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createSong', () => {
    const createSongTest = async (): Promise<void> => {
      const createSongDto: CreateSongDto = {
        title: 'Test Song',
        artistId: 1,
        description: 'Test Description',
      };

      const result = await controller.createSong(createSongDto, mockUser);

      expect(result.song).toBeDefined();
      expect(service.createSong).toHaveBeenCalledWith(
        createSongDto,
        mockUser.id,
      );
    };

    it('should create a song', createSongTest);
  });

  describe('listSongs', () => {
    const listSongsTest = async (): Promise<void> => {
      const result = await controller.listSongs(10, null);

      expect(result.songs).toBeDefined();
      expect(service.listSongs).toHaveBeenCalledWith(10, null);
    };

    it('should return list of songs', listSongsTest);
  });

  describe('getSong', () => {
    const getSongTest = async (): Promise<void> => {
      const result = await controller.getSong(1);

      expect(result.song).toBeDefined();
      expect(service.getSong).toHaveBeenCalledWith(1);
    };

    it('should return a song by id', getSongTest);
  });

  describe('updateSong', () => {
    const updateSongTest = async (): Promise<void> => {
      const updateSongDto: UpdateSongDto = {
        title: 'Updated Song',
        artistId: 1,
        description: 'Updated Description',
      };

      const result = await controller.updateSong(1, updateSongDto, mockUser);

      expect(result.song).toBeDefined();
      expect(service.updateSong).toHaveBeenCalledWith(
        1,
        updateSongDto,
        mockUser.id,
      );
    };

    it('should update a song', updateSongTest);
  });

  describe('deleteSong', () => {
    const deleteSongTest = async (): Promise<void> => {
      const result = await controller.deleteSong(1);

      expect(result.success).toBe(true);
      expect(service.deleteSong).toHaveBeenCalledWith(1);
    };

    it('should delete a song', deleteSongTest);
  });
});
