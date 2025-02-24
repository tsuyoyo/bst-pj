import { Test, TestingModule } from '@nestjs/testing';
import { SessionSongService } from './session-song.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionSong } from '../entities/session-song';
import { RequiredPart } from '../entities/required-part.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { SessionPartService } from '../session-part/session-part.service';
import { SongService } from '../song/song.service';
import { PartService } from '../part/part.service';
import { User } from '../entities/user.entity';
import { NotFoundException } from '@nestjs/common';

describe('SessionSongService', () => {
  let service: SessionSongService;

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

  const mockSessionSongRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    find: jest.fn(),
    delete: jest.fn(),
  };

  const mockRequiredPartRepository = {
    create: jest.fn(),
    save: jest.fn(),
    find: jest.fn(),
    delete: jest.fn(),
  };

  const mockSessionVerifyAccessService = {
    verifySessionAccess: jest.fn(),
  };

  const mockSessionPartService = {
    getSessionPart: jest.fn(),
    getSessionPartEntity: jest.fn().mockResolvedValue({
      id: 1,
      name: 'Guitar',
      sessionId: 1,
      partId: 1,
    }),
    listSessionParts: jest.fn(),
  };

  const mockSongService = {
    getSong: jest.fn(),
  };

  const mockPartService = {
    getPart: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionSongService,
        {
          provide: getRepositoryToken(SessionSong),
          useValue: mockSessionSongRepository,
        },
        {
          provide: getRepositoryToken(RequiredPart),
          useValue: mockRequiredPartRepository,
        },
        {
          provide: SessionVerifyAccessService,
          useValue: mockSessionVerifyAccessService,
        },
        {
          provide: SessionPartService,
          useValue: mockSessionPartService,
        },
        {
          provide: SongService,
          useValue: mockSongService,
        },
        {
          provide: PartService,
          useValue: mockPartService,
        },
      ],
    }).compile();

    service = module.get<SessionSongService>(SessionSongService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('addSessionSong', () => {
    it('should add a session song', async () => {
      const sessionId = 1;
      const dto = {
        songId: 1,
        mandatoryPartIds: [1, 2],
      };

      const mockSong = {
        song: {
          id: 1,
          name: 'Test Song',
        },
      };

      const mockSessionSong = {
        id: 1,
        sessionId,
        songId: dto.songId,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSongService.getSong.mockResolvedValue(mockSong);
      mockSessionSongRepository.create.mockReturnValue(mockSessionSong);
      mockSessionSongRepository.save.mockResolvedValue(mockSessionSong);
      mockSessionPartService.getSessionPart.mockResolvedValue({
        id: 1,
        name: 'Guitar',
      });
      mockRequiredPartRepository.create.mockReturnValue({
        sessionSongId: 1,
        sessionPartId: 1,
      });
      mockRequiredPartRepository.save.mockResolvedValue({
        id: 1,
        sessionSongId: 1,
        sessionPartId: 1,
      });
      mockSessionPartService.listSessionParts.mockResolvedValue({
        parts: [
          {
            id: '1',
            name: 'Guitar',
            part: {
              id: 1,
              name: 'Guitar',
            },
          },
        ],
      });

      const result = await service.addSessionSong(sessionId, dto, mockUser);
      expect(result.song).toBeDefined();
      expect(mockSessionSongRepository.save).toHaveBeenCalled();
      expect(mockRequiredPartRepository.save).toHaveBeenCalled();
    });

    it('should throw NotFoundException if song not found', async () => {
      const sessionId = 1;
      const dto = {
        songId: 1,
        mandatoryPartIds: [1],
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSongService.getSong.mockResolvedValue({ song: null });

      await expect(
        service.addSessionSong(sessionId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('listSessionSongs', () => {
    it('should return session songs', async () => {
      const sessionId = 1;
      const mockSessionSongs = [
        {
          id: 1,
          sessionId,
          songId: 1,
          song: { id: 1 },
        },
      ];

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongRepository.find.mockResolvedValue(mockSessionSongs);
      mockSongService.getSong.mockResolvedValue({
        song: {
          id: 1,
          name: 'Test Song',
        },
      });
      mockRequiredPartRepository.find.mockResolvedValue([]);
      mockSessionPartService.listSessionParts.mockResolvedValue({
        parts: [],
      });

      const result = await service.listSessionSongs(sessionId);
      expect(result.songs).toHaveLength(1);
    });
  });

  describe('updateSessionSong', () => {
    it('should update a session song', async () => {
      const sessionId = 1;
      const songId = 1;
      const dto = {
        mandatoryPartIds: [1, 2, 3],
      };

      const mockSessionSong = {
        id: songId,
        sessionId,
        songId: 1,
        song: { id: 1 },
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongRepository.findOne.mockResolvedValue(mockSessionSong);
      mockRequiredPartRepository.find.mockResolvedValue([]);
      mockRequiredPartRepository.delete.mockResolvedValue({ affected: 1 });
      mockSessionPartService.getSessionPart.mockResolvedValue({
        id: 1,
        name: 'Guitar',
      });
      mockSongService.getSong.mockResolvedValue({
        song: {
          id: 1,
          name: 'Test Song',
        },
      });

      const result = await service.updateSessionSong(
        sessionId,
        songId,
        dto,
        mockUser,
      );
      expect(result.song).toBeDefined();
    });

    it('should throw NotFoundException if session song not found', async () => {
      const sessionId = 1;
      const songId = 1;
      const dto = {
        mandatoryPartIds: [1],
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongRepository.findOne.mockResolvedValue(null);

      await expect(
        service.updateSessionSong(sessionId, songId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteSessionSong', () => {
    it('should delete a session song', async () => {
      const sessionId = 1;
      const songId = 1;
      const mockSessionSong = {
        id: songId,
        sessionId,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongRepository.findOne.mockResolvedValue(mockSessionSong);
      mockSessionSongRepository.delete.mockResolvedValue({ affected: 1 });

      const result = await service.deleteSessionSong(
        sessionId,
        songId,
        mockUser,
      );
      expect(result.success).toBe(true);
    });

    it('should throw NotFoundException if session song not found', async () => {
      const sessionId = 1;
      const songId = 1;

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongRepository.findOne.mockResolvedValue(null);

      await expect(
        service.deleteSessionSong(sessionId, songId, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });
});
