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

  const mockSongService = {
    createSong: jest.fn().mockResolvedValue({
      song: {
        id: 1,
        title: 'Test Song',
        description: 'Test Description',
        artist: {
          id: 1,
          name: 'Test Artist',
        },
      },
    }),
    listSongs: jest.fn().mockResolvedValue({
      songs: [
        {
          id: 1,
          title: 'Test Song',
          description: 'Test Description',
          artist: {
            id: 1,
            name: 'Test Artist',
          },
        },
      ],
      nextPageToken: null,
      totalSize: 1,
    }),
    getSong: jest.fn().mockResolvedValue({
      song: {
        id: 1,
        title: 'Test Song',
        description: 'Test Description',
        artist: {
          id: 1,
          name: 'Test Artist',
        },
      },
    }),
    updateSong: jest.fn().mockResolvedValue({
      song: {
        id: 1,
        title: 'Updated Song',
        description: 'Updated Description',
        artist: {
          id: 1,
          name: 'Test Artist',
        },
      },
    }),
    deleteSong: jest.fn().mockResolvedValue({ success: true }),
    addSongResource: jest.fn().mockResolvedValue({ success: true }),
    listSongResources: jest.fn().mockResolvedValue({
      resources: [],
      nextPageToken: null,
      totalSize: 0,
    }),
    deleteSongResource: jest.fn().mockResolvedValue({ success: true }),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SongController],
      providers: [
        {
          provide: SongService,
          useValue: mockSongService,
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
    it('should create a song', async () => {
      const createSongDto: CreateSongDto = {
        title: 'Test Song',
        artistId: 1,
      };

      const result = await controller.createSong(createSongDto, mockUser);
      expect(result.song).toBeDefined();
      expect(service.createSong).toHaveBeenCalledWith(
        createSongDto,
        mockUser.id,
      );
    });
  });

  describe('listSongs', () => {
    it('should return a list of songs', async () => {
      const result = await controller.listSongs('10', null);
      expect(result.songs).toBeDefined();
      expect(Array.isArray(result.songs)).toBe(true);
      expect(service.listSongs).toHaveBeenCalledWith(10, null);
    });
  });

  describe('getSong', () => {
    it('should return a song by id', async () => {
      const result = await controller.getSong(1);
      expect(result.song).toBeDefined();
      expect(service.getSong).toHaveBeenCalledWith(1);
    });
  });

  describe('updateSong', () => {
    it('should update a song', async () => {
      const updateSongDto: UpdateSongDto = {
        title: 'Updated Song',
        description: 'Updated Description',
        artistId: 1,
      };

      const result = await controller.updateSong(1, updateSongDto, mockUser);
      expect(result.song).toBeDefined();
      expect(service.updateSong).toHaveBeenCalledWith(
        1,
        updateSongDto,
        mockUser.id,
      );
    });
  });

  describe('deleteSong', () => {
    it('should delete a song', async () => {
      const result = await controller.deleteSong(1);
      expect(result.success).toBe(true);
      expect(service.deleteSong).toHaveBeenCalledWith(1);
    });
  });

  describe('addSongResource', () => {
    it('should add a resource to a song', async () => {
      const result = await controller.addSongResource(1, 1);
      expect(result.success).toBe(true);
      expect(service.addSongResource).toHaveBeenCalledWith(1, 1);
    });
  });

  describe('listSongResources', () => {
    it('should return a list of song resources', async () => {
      const result = await controller.listSongResources(1, '10', '0');
      expect(result.resources).toBeDefined();
      expect(Array.isArray(result.resources)).toBe(true);
      expect(service.listSongResources).toHaveBeenCalledWith(1, 10, 0);
    });
  });

  describe('deleteSongResource', () => {
    it('should delete a resource from a song', async () => {
      const result = await controller.deleteSongResource(1, 1);
      expect(result.success).toBe(true);
      expect(service.deleteSongResource).toHaveBeenCalledWith(1, 1);
    });
  });
});
