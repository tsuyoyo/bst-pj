import { Test, TestingModule } from '@nestjs/testing';
import { SessionController } from './session.controller';
import { SessionService } from './session.service';
import { User } from '../entities/user.entity';
import { CreateSessionDto } from './dto/create-session.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionStatus } from '../proto/bst/v1/session';

describe('SessionController', () => {
  let controller: SessionController;

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

  const mockSessionService = {
    createSession: jest.fn(),
    getSession: jest.fn(),
    updateSession: jest.fn(),
    updateSessionStatus: jest.fn(),
    cancelSession: jest.fn(),
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
      controllers: [SessionController],
      providers: [
        {
          provide: SessionService,
          useValue: mockSessionService,
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

    controller = module.get<SessionController>(SessionController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createSession', () => {
    it('should create a session', async () => {
      const createSessionDto: CreateSessionDto = {
        title: 'Test Session',
        description: 'Test Description',
        eventDate: new Date(),
      };

      const expectedResponse = {
        session: {
          id: 1,
          title: 'Test Session',
          timeline: {
            createdAt: new Date(),
            eventDate: createSessionDto.eventDate,
          },
          status: SessionStatus.SESSION_STATUS_BEFORE_ENTRY,
          participantsNum: 1,
        },
      };

      mockSessionService.createSession.mockResolvedValue(expectedResponse);

      const result = await controller.createSession(createSessionDto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.createSession).toHaveBeenCalledWith(
        createSessionDto,
        mockUser,
      );
    });
  });

  describe('getSession', () => {
    it('should return a session', async () => {
      const sessionId = 1;
      const expectedResponse = {
        session: {
          id: sessionId,
          title: 'Test Session',
          description: 'Test Description',
          timeline: {
            createdAt: new Date(),
            eventDate: new Date(),
          },
          status: SessionStatus.SESSION_STATUS_BEFORE_ENTRY,
          participantsNum: 2,
        },
      };

      mockSessionService.getSession.mockResolvedValue(expectedResponse);

      const result = await controller.getSession(sessionId, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.getSession).toHaveBeenCalledWith(
        sessionId,
        mockUser,
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

      const expectedResponse = {
        session: {
          id: sessionId,
          title: dto.title,
          description: dto.description,
          timeline: {
            createdAt: new Date(),
            eventDate: dto.eventDate,
          },
          status: SessionStatus.SESSION_STATUS_BEFORE_ENTRY,
          participantsNum: 2,
        },
      };

      mockSessionService.updateSession.mockResolvedValue(expectedResponse);

      const result = await controller.updateSession(sessionId, dto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.updateSession).toHaveBeenCalledWith(
        sessionId,
        dto,
        mockUser,
      );
    });
  });

  describe('updateSessionStatus', () => {
    it('should update session status', async () => {
      const sessionId = 1;
      const dto = {
        status: SessionStatus.SESSION_STATUS_ONGOING,
      };

      const expectedResponse = {
        session: {
          id: sessionId,
          status: dto.status,
        },
      };

      mockSessionService.updateSessionStatus.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.updateSessionStatus(
        sessionId,
        dto,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.updateSessionStatus).toHaveBeenCalledWith(
        sessionId,
        dto,
        mockUser,
      );
    });
  });

  describe('cancelSession', () => {
    it('should cancel a session', async () => {
      const sessionId = 1;
      const expectedResponse = { success: true };

      mockSessionService.cancelSession.mockResolvedValue(expectedResponse);

      const result = await controller.cancelSession(sessionId, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.cancelSession).toHaveBeenCalledWith(
        sessionId,
        mockUser,
      );
    });
  });
});
