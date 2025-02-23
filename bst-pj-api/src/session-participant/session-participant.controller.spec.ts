import { Test, TestingModule } from '@nestjs/testing';
import { SessionParticipantController } from './session-participant.controller';
import { SessionParticipantService } from './session-participant.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from '../entities/user.entity';
import { SessionParticipantStatus } from '../proto/bst/v1/session';
import { SetSessionParticipantIsAdminDto } from './dto/set-session-participant-is-admin.dto';
describe('SessionParticipantController', () => {
  let controller: SessionParticipantController;

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

  const mockSessionParticipantService = {
    listSessionParticipants: jest.fn(),
    addSessionParticipant: jest.fn(),
    deleteSessionParticipant: jest.fn(),
    setSessionParticipantIsAdmin: jest.fn(),
    addSessionParticipantParts: jest.fn(),
    updateSessionParticipantStatus: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SessionParticipantController],
      providers: [
        {
          provide: SessionParticipantService,
          useValue: mockSessionParticipantService,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<SessionParticipantController>(
      SessionParticipantController,
    );
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('listSessionParticipants', () => {
    it('should return list of participants', async () => {
      const sessionId = 1;
      const mockResponse = {
        participants: [
          {
            id: 1,
            user: mockUser,
            parts: [],
            primaryPartId: 1,
            status:
              SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
            isAdmin: false,
            isPlayer: true,
          },
        ],
      };

      mockSessionParticipantService.listSessionParticipants.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.listSessionParticipants(sessionId);

      expect(result).toEqual(mockResponse);
      expect(
        mockSessionParticipantService.listSessionParticipants,
      ).toHaveBeenCalledWith(sessionId);
    });
  });

  describe('addSessionParticipant', () => {
    it('should add a participant', async () => {
      const sessionId = 1;
      const dto = {
        userId: 2,
        parts: [{ sessionPartId: 1, isPrimary: true }],
      };
      const mockResponse = {
        sessionParticipant: {
          id: 1,
          user: mockUser,
          parts: [],
          primaryPartId: 1,
          status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
          isAdmin: false,
          isPlayer: true,
        },
      };

      mockSessionParticipantService.addSessionParticipant.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.addSessionParticipant(
        sessionId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(
        mockSessionParticipantService.addSessionParticipant,
      ).toHaveBeenCalledWith(sessionId, dto, mockUser);
    });
  });

  describe('setSessionParticipantIsAdmin', () => {
    it('should set participant admin status', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto: SetSessionParticipantIsAdminDto = { isAdmin: true };
      const mockResponse = {
        sessionParticipant: {
          id: 1,
          user: mockUser,
          parts: [],
          primaryPartId: 1,
          status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
          isAdmin: true,
          isPlayer: true,
        },
      };

      mockSessionParticipantService.setSessionParticipantIsAdmin.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.setSessionParticipantIsAdmin(
        sessionId,
        participantId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(
        mockSessionParticipantService.setSessionParticipantIsAdmin,
      ).toHaveBeenCalledWith(sessionId, participantId, dto, mockUser);
    });
  });

  describe('addSessionParticipantParts', () => {
    it('should add secondary parts to participant', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = { sessionPartId: 2 };
      const mockResponse = {
        sessionParticipant: {
          id: 1,
          user: mockUser,
          parts: [],
          primaryPartId: 1,
          status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
          isAdmin: false,
          isPlayer: true,
        },
      };

      mockSessionParticipantService.addSessionParticipantParts.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.addSessionParticipantParts(
        sessionId,
        participantId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(
        mockSessionParticipantService.addSessionParticipantParts,
      ).toHaveBeenCalledWith(sessionId, participantId, dto, mockUser);
    });
  });

  describe('updateSessionParticipantStatus', () => {
    it('should update participant status', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = {
        status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
      };
      const mockResponse = {
        sessionParticipant: {
          id: 1,
          user: mockUser,
          parts: [],
          primaryPartId: 1,
          status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
          isAdmin: false,
          isPlayer: true,
        },
      };

      mockSessionParticipantService.updateSessionParticipantStatus.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.updateSessionParticipantStatus(
        sessionId,
        participantId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(
        mockSessionParticipantService.updateSessionParticipantStatus,
      ).toHaveBeenCalledWith(sessionId, participantId, dto, mockUser);
    });
  });
});
