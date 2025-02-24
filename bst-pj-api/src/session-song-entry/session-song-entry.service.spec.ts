import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionSongEntryService } from './session-song-entry.service';
import { SessionSongEntry } from '../entities/session-song-entry.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { SessionParticipantService } from '../session-participant/session-participant.service';
import { SessionPartService } from '../session-part/session-part.service';
import { User } from '../entities/user.entity';
import { NotFoundException } from '@nestjs/common';

describe('SessionSongEntryService', () => {
  let service: SessionSongEntryService;

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

  const mockSessionSongEntryRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    remove: jest.fn(),
  };

  const mockSessionVerifyAccessService = {
    verifySessionAccess: jest.fn(),
  };

  const mockSessionParticipantService = {
    getSessionParticipantByUserId: jest.fn(),
    getSessionParticipant: jest.fn(),
    findBySessionParticipantId: jest.fn(),
  };

  const mockSessionPartService = {
    getSessionPart: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionSongEntryService,
        {
          provide: getRepositoryToken(SessionSongEntry),
          useValue: mockSessionSongEntryRepository,
        },
        {
          provide: SessionVerifyAccessService,
          useValue: mockSessionVerifyAccessService,
        },
        {
          provide: SessionParticipantService,
          useValue: mockSessionParticipantService,
        },
        {
          provide: SessionPartService,
          useValue: mockSessionPartService,
        },
      ],
    }).compile();

    service = module.get<SessionSongEntryService>(SessionSongEntryService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('addSongEntry', () => {
    it('should add a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const dto = {
        sessionPartId: 1,
        comment: 'Test comment',
      };

      const mockSessionParticipant = {
        id: 1,
        user: {
          id: 1,
          name: 'testuser',
          email: 'test@example.com',
        },
      };

      const mockEntry = {
        id: 1,
        sessionSongId: songId,
        sessionParticipantId: mockSessionParticipant.id,
        sessionPartId: dto.sessionPartId,
        comment: dto.comment,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionParticipantService.getSessionParticipantByUserId.mockResolvedValue(
        mockSessionParticipant,
      );
      mockSessionParticipantService.getSessionParticipant.mockResolvedValue(
        mockSessionParticipant,
      );
      mockSessionSongEntryRepository.create.mockReturnValue(mockEntry);
      mockSessionSongEntryRepository.save.mockResolvedValue(mockEntry);
      mockSessionPartService.getSessionPart.mockResolvedValue({
        id: 1,
        name: 'Guitar',
      });

      const result = await service.addSongEntry(
        sessionId,
        songId,
        dto,
        mockUser,
      );

      expect(result.entry).toBeDefined();
      expect(mockSessionSongEntryRepository.save).toHaveBeenCalled();
      expect(result.entry?.comment).toBe(dto.comment);
      expect(result.entry?.user).toBeDefined();
      expect(result.entry?.user?.name).toBe('testuser');
    });
  });

  describe('updateSongEntry', () => {
    it('should update a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;
      const dto = {
        comment: 'Updated comment',
      };

      const mockEntry = {
        id: entryId,
        sessionSongId: songId,
        sessionPartId: 1,
        comment: 'Original comment',
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongEntryRepository.findOne.mockResolvedValue(mockEntry);
      mockSessionSongEntryRepository.save.mockResolvedValue({
        ...mockEntry,
        comment: dto.comment,
      });
      mockSessionPartService.getSessionPart.mockResolvedValue({
        id: 1,
        name: 'Guitar',
      });
      mockSessionParticipantService.getSessionParticipant.mockResolvedValue({
        id: 1,
        user: mockUser,
      });

      const result = await service.updateSongEntry(
        sessionId,
        songId,
        entryId,
        dto,
        mockUser,
      );

      expect(result.entry).toBeDefined();
      expect(result.entry?.comment).toBe(dto.comment);
    });

    it('should throw NotFoundException if entry not found', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;
      const dto = {
        comment: 'Updated comment',
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongEntryRepository.findOne.mockResolvedValue(null);

      await expect(
        service.updateSongEntry(sessionId, songId, entryId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteSongEntry', () => {
    it('should delete a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;

      const mockEntry = {
        id: entryId,
        sessionSongId: songId,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongEntryRepository.findOne.mockResolvedValue(mockEntry);
      mockSessionSongEntryRepository.remove.mockResolvedValue(mockEntry);

      const result = await service.deleteSongEntry(
        sessionId,
        songId,
        entryId,
        mockUser,
      );

      expect(result.success).toBe(true);
      expect(mockSessionSongEntryRepository.remove).toHaveBeenCalled();
    });

    it('should return success false if entry not found', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionSongEntryRepository.findOne.mockResolvedValue(null);

      const result = await service.deleteSongEntry(
        sessionId,
        songId,
        entryId,
        mockUser,
      );

      expect(result.success).toBe(false);
    });
  });
});
