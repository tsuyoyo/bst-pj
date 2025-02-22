import { Test, TestingModule } from '@nestjs/testing';
import { SessionSongController } from './session-song.controller';
import { SessionSongService } from './session-song.service';
import { User } from '../entities/user.entity';
import { AddSessionSongDto } from './dto/add-session-song.dto';
import { UpdateSessionSongDto } from './dto/update-session-song.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('SessionSongController', () => {
  let controller: SessionSongController;

  const mockUser: User = {
    id: 1,
    externalId: null,
    externalService: null,
    name: 'testuser',
    email: 'test@example.com',
    password: 'password',
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockSessionSongService = {
    addSessionSong: jest.fn(),
    listSessionSongs: jest.fn(),
    updateSessionSong: jest.fn(),
    deleteSessionSong: jest.fn(),
  };

  const mockJwtService = {
    sign: jest.fn(),
    verify: jest.fn(),
  };

  const mockUserRepository = {
    findOne: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SessionSongController],
      providers: [
        {
          provide: SessionSongService,
          useValue: mockSessionSongService,
        },
        {
          provide: JwtService,
          useValue: mockJwtService,
        },
        {
          provide: getRepositoryToken(User),
          useValue: mockUserRepository,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<SessionSongController>(SessionSongController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('addSessionSong', () => {
    it('should add a session song', async () => {
      const sessionId = 1;
      const dto: AddSessionSongDto = {
        songId: 1,
        mandatoryPartIds: [1, 2],
      };

      const expectedResponse = {
        song: {
          song: {
            id: 1,
            name: 'Test Song',
          },
          entries: [],
          parts: [
            {
              part: {
                id: 1,
                name: 'Guitar',
              },
              isRequired: true,
            },
          ],
        },
      };

      mockSessionSongService.addSessionSong.mockResolvedValue(expectedResponse);

      const result = await controller.addSessionSong(sessionId, dto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionSongService.addSessionSong).toHaveBeenCalledWith(
        sessionId,
        dto,
        mockUser,
      );
    });
  });

  describe('listSessionSongs', () => {
    it('should return session songs', async () => {
      const sessionId = 1;
      const expectedResponse = {
        songs: [
          {
            song: {
              id: 1,
              name: 'Test Song',
            },
            entries: [],
            parts: [],
          },
        ],
      };

      mockSessionSongService.listSessionSongs.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.listSessionSongs(sessionId, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionSongService.listSessionSongs).toHaveBeenCalledWith(
        sessionId,
        mockUser,
      );
    });
  });

  describe('updateSessionSong', () => {
    it('should update a session song', async () => {
      const sessionId = 1;
      const songId = 1;
      const dto: UpdateSessionSongDto = {
        mandatoryPartIds: [1, 2, 3],
      };

      const expectedResponse = {
        song: {
          song: {
            id: 1,
            name: 'Test Song',
          },
          entries: [],
          parts: [],
        },
      };

      mockSessionSongService.updateSessionSong.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.updateSessionSong(
        sessionId,
        songId,
        dto,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockSessionSongService.updateSessionSong).toHaveBeenCalledWith(
        sessionId,
        songId,
        dto,
        mockUser,
      );
    });
  });

  describe('deleteSessionSong', () => {
    it('should delete a session song', async () => {
      const sessionId = 1;
      const songId = 1;
      const expectedResponse = { success: true };

      mockSessionSongService.deleteSessionSong.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.deleteSessionSong(
        sessionId,
        songId,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockSessionSongService.deleteSessionSong).toHaveBeenCalledWith(
        sessionId,
        songId,
        mockUser,
      );
    });
  });
});
