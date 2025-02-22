import { Test, TestingModule } from '@nestjs/testing';
import { SessionService } from './session.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Session } from '../entities/session.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { User } from '../entities/user.entity';
import { SessionStatus } from '../entities/types/session-status.enum';
import { CreateSessionDto } from './dto/create-session.dto';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionParticipantService } from '../session-participant/session-participant.service';

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
    listSessionParts: jest.fn(),
  };

  const mockSessionParticipantService = {
    listSessionParticipants: jest.fn(),
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
});
