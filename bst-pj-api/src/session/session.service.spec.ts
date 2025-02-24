import { Test, TestingModule } from '@nestjs/testing';
import { SessionService } from './session.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Session } from '../entities/session.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { User } from '../entities/user.entity';
import { SessionStatus } from '../entities/types/session-status.enum';
import { SessionStatus as ProtoSessionStatus } from '../proto/bst/v1/session';
import { CreateSessionDto } from './dto/create-session.dto';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionParticipantService } from '../session-participant/session-participant.service';
import { SessionVerifyAccessService } from './session-verify-access.service';
import { NotFoundException } from '@nestjs/common';
import { UpdateSessionStatusDto } from './dto/update-session-status.dto';
import { StudioService } from '../studio/studio.service';
import { StudioRoomService } from '../studio-room/studio-room.service';

describe('SessionService', () => {
  let service: SessionService;

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

  const mockSessionRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
  };

  const mockSessionParticipantRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    count: jest.fn(),
  };

  const mockSessionPartService = {
    listSessionParts: jest.fn().mockReturnValue({
      parts: [
        {
          id: 1,
          title: 'Test Part',
          description: 'Test Description',
        },
      ],
    }),
  };

  const mockSessionParticipantService = {
    listSessionParticipants: jest.fn().mockResolvedValue({
      participants: [
        {
          id: 1,
          user: {
            id: 1,
            name: 'testuser',
          },
          isAdmin: true,
          isPlayer: true,
          parts: [
            {
              id: 1,
              name: 'Guitar',
            },
          ],
        },
      ],
    }),
  };

  const mockSessionVerifyAccessService = {
    verifySessionAccess: jest.fn(),
  };

  const mockStudioService = {
    getStudio: jest.fn().mockResolvedValue({
      studio: {
        id: 1,
        name: 'Test Studio',
        address: 'Test Address',
      },
    }),
  };

  const mockStudioRoomService = {
    getStudioRoom: jest.fn().mockResolvedValue({
      room: {
        id: 1,
        name: 'Test Room',
        capacity: 5,
      },
    }),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionService,
        {
          provide: getRepositoryToken(Session),
          useValue: mockSessionRepository,
        },
        {
          provide: getRepositoryToken(SessionParticipant),
          useValue: mockSessionParticipantRepository,
        },
        {
          provide: SessionPartService,
          useValue: mockSessionPartService,
        },
        {
          provide: SessionParticipantService,
          useValue: mockSessionParticipantService,
        },
        {
          provide: SessionVerifyAccessService,
          useValue: mockSessionVerifyAccessService,
        },
        {
          provide: StudioService,
          useValue: mockStudioService,
        },
        {
          provide: StudioRoomService,
          useValue: mockStudioRoomService,
        },
      ],
    }).compile();

    service = module.get<SessionService>(SessionService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createSession', () => {
    it('should create a session and add creator as participant', async () => {
      const createSessionDto: CreateSessionDto = {
        title: 'Test Session',
        description: 'Test Description',
        eventDate: new Date(),
      };

      const mockSession = {
        id: 1,
        title: createSessionDto.title,
        description: createSessionDto.description,
        date: createSessionDto.eventDate,
        creatorId: mockUser.id,
        status: SessionStatus.BeforeEntry,
        createdAt: new Date(),
        updatedAt: new Date(),
      };

      const mockSessionParticipant = {
        id: 1,
        sessionId: mockSession.id,
        userId: mockUser.id,
        isAdmin: true,
      };

      mockSessionRepository.create.mockReturnValue(mockSession);
      mockSessionRepository.save.mockResolvedValue(mockSession);
      mockSessionParticipantRepository.create.mockReturnValue(
        mockSessionParticipant,
      );
      mockSessionParticipantRepository.save.mockResolvedValue(
        mockSessionParticipant,
      );
      mockSessionParticipantRepository.count.mockResolvedValue(1);

      const result = await service.createSession(createSessionDto, mockUser);

      expect(result.session).toBeDefined();
      expect(result?.session?.id).toBe(mockSession.id);
      expect(result?.session?.title).toBe(mockSession.title);
      expect(mockSessionRepository.save).toHaveBeenCalled();
      expect(mockSessionParticipantRepository.save).toHaveBeenCalled();
    });
  });

  describe('mapEntitySessionStatusToProto', () => {
    it('should map entity session status to proto status', () => {
      const result = service['mapEntitySessionStatusToProto'](
        SessionStatus.BeforeEntry,
      );
      expect(result).toBeDefined();
    });
  });

  describe('getSession', () => {
    it('should return a session', async () => {
      const sessionId = 1;
      const mockSession = {
        id: sessionId,
        title: 'Test Session',
        description: 'Test Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.BeforeEntry,
        studioId: 1,
        studioRoomId: 1,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockSessionParticipantRepository.count.mockResolvedValue(2);
      mockSessionParticipantService.listSessionParticipants.mockResolvedValue({
        participants: [
          {
            id: 1,
            user: {
              id: 1,
              name: 'testuser',
            },
            isAdmin: true,
            isPlayer: true,
            parts: [
              {
                id: 1,
                name: 'Guitar',
              },
            ],
          },
        ],
      });

      const result = await service.getSession(sessionId, mockUser);

      expect(result.session).toBeDefined();
      expect(result.session?.id).toBe(sessionId);
      expect(result.session?.title).toBe(mockSession.title);
      expect(result.session?.participantsNum).toBe(2);
      expect(result.detail).toBeDefined();
      expect(result.detail?.description).toBe(mockSession.description);
      expect(result.detail?.studio).toBeDefined();
      expect(result.detail?.room).toBeDefined();
    });

    it('should throw NotFoundException when session not found', async () => {
      const sessionId = 1;

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(null);

      await expect(service.getSession(sessionId, mockUser)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateSession', () => {
    it('should update a session', async () => {
      const sessionId = 1;
      const dto = {
        title: 'Updated Session',
        description: 'Updated Description',
        eventDate: new Date(),
      };

      const mockSession = {
        id: sessionId,
        title: 'Original Session',
        description: 'Original Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.BeforeEntry,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockSessionRepository.save.mockResolvedValue({
        ...mockSession,
        title: dto.title,
        description: dto.description,
        date: dto.eventDate,
      });
      mockSessionParticipantRepository.count.mockResolvedValue(2);

      const result = await service.updateSession(sessionId, dto, mockUser);

      expect(result.session).toBeDefined();
      expect(result.session?.title).toBe(dto.title);

      expect(result.detail).toBeDefined();
      expect(result.detail?.description).toBe(dto.description);
    });
  });

  describe('updateSessionStatus', () => {
    it('should update session status', async () => {
      const sessionId = 1;
      const dto: UpdateSessionStatusDto = {
        status: ProtoSessionStatus.SESSION_STATUS_ONGOING,
      };

      const mockSession = {
        id: sessionId,
        title: 'Test Session',
        description: 'Test Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.Ongoing,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockSessionRepository.save.mockResolvedValue({
        ...mockSession,
        status: SessionStatus.Ongoing,
      });
      mockSessionParticipantRepository.count.mockResolvedValue(2);

      const result = await service.updateSessionStatus(
        sessionId,
        dto,
        mockUser,
      );

      expect(result.session).toBeDefined();
      expect(result.session?.status).toBe(
        ProtoSessionStatus.SESSION_STATUS_ONGOING,
      );
    });
  });

  describe('cancelSession', () => {
    it('should cancel a session', async () => {
      const sessionId = 1;
      const mockSession = {
        id: sessionId,
        title: 'Test Session',
        description: 'Test Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.BeforeEntry,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockSessionRepository.save.mockResolvedValue({
        ...mockSession,
        status: SessionStatus.Cancelled,
      });

      const result = await service.cancelSession(sessionId, mockUser);

      expect(result.session?.status).toBe(
        ProtoSessionStatus.SESSION_STATUS_CANCELLED,
      );
    });

    it('should throw NotFoundException when session not found', async () => {
      const sessionId = 1;

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(null);

      await expect(service.cancelSession(sessionId, mockUser)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateSessionStudio', () => {
    it('should update session studio', async () => {
      const sessionId = 1;
      const dto = {
        studioId: 2,
        studioRoomId: 3,
      };

      const mockSession = {
        id: sessionId,
        title: 'Test Session',
        description: 'Test Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.BeforeEntry,
        studioId: 1,
        studioRoomId: 1,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockSessionRepository.save.mockResolvedValue({
        ...mockSession,
        studioId: dto.studioId,
        studioRoomId: dto.studioRoomId,
      });
      mockSessionParticipantRepository.count.mockResolvedValue(2);
      mockStudioService.getStudio.mockResolvedValue({
        studio: {
          id: dto.studioId,
          name: 'Updated Studio',
        },
      });
      mockStudioRoomService.getStudioRoom.mockResolvedValue({
        room: {
          id: dto.studioRoomId,
          name: 'Updated Room',
        },
      });

      const result = await service.updateSessionStudio(
        sessionId,
        dto,
        mockUser,
      );

      expect(result.session).toBeDefined();
      expect(result.detail).toBeDefined();
      expect(result.detail?.studio).toBeDefined();
      expect(result.detail?.room).toBeDefined();
      expect(mockStudioService.getStudio).toHaveBeenCalledWith(dto.studioId);
      expect(mockStudioRoomService.getStudioRoom).toHaveBeenCalledWith(
        dto.studioId,
        dto.studioRoomId,
      );
    });

    it('should throw NotFoundException when session not found', async () => {
      const sessionId = 1;
      const dto = {
        studioId: 2,
        studioRoomId: 3,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(null);

      await expect(
        service.updateSessionStudio(sessionId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });

    it('should throw NotFoundException when studio not found', async () => {
      const sessionId = 1;
      const dto = {
        studioId: 2,
        studioRoomId: 3,
      };

      const mockSession = {
        id: sessionId,
        title: 'Test Session',
        description: 'Test Description',
        date: new Date(),
        createdAt: new Date(),
        status: SessionStatus.BeforeEntry,
        studioId: 1,
        studioRoomId: 1,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionRepository.findOne.mockResolvedValue(mockSession);
      mockStudioService.getStudio.mockRejectedValue(
        new NotFoundException(`Studio not found`),
      );

      await expect(
        service.updateSessionStudio(sessionId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });
});
