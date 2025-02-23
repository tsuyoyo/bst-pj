import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionParticipantService } from './session-participant.service';
import { SessionParticipant } from '../entities/session-participant.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { UserService } from '../user/user.service';
import { SessionParticipantPartService } from './session-participant-part.service';
import { User } from '../entities/user.entity';
import {
  BadRequestException,
  ForbiddenException,
  NotFoundException,
} from '@nestjs/common';
import { SessionParticipantStatus } from '../proto/bst/v1/session';
import { EntityManager } from 'typeorm';

describe('SessionParticipantService', () => {
  let service: SessionParticipantService;

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

  const mockEntityManager: Partial<EntityManager> = {
    findOne: jest.fn(),
    save: jest.fn(),
    create: jest.fn().mockReturnValue({ id: 1 }),
  };

  const mockSessionParticipantRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    find: jest.fn(),
    remove: jest.fn(),
    manager: {
      transaction: jest.fn(
        (callback: (entityManager: EntityManager) => Promise<void>) => {
          return callback(mockEntityManager as EntityManager);
        },
      ),
      findOne: mockEntityManager.findOne,
      create: mockEntityManager.create,
    },
  };

  const mockSessionVerifyAccessService = {
    verifySessionAccess: jest.fn(),
  };

  const mockUserService = {
    getUser: jest.fn(),
  };

  const mockSessionParticipantPartService = {
    create: jest.fn(),
    findBySessionParticipantId: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionParticipantService,
        {
          provide: getRepositoryToken(SessionParticipant),
          useValue: mockSessionParticipantRepository,
        },
        {
          provide: SessionVerifyAccessService,
          useValue: mockSessionVerifyAccessService,
        },
        {
          provide: UserService,
          useValue: mockUserService,
        },
        {
          provide: SessionParticipantPartService,
          useValue: mockSessionParticipantPartService,
        },
      ],
    }).compile();

    service = module.get<SessionParticipantService>(SessionParticipantService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('addSessionParticipant', () => {
    it('should add a new participant', async () => {
      const sessionId = 1;
      const dto = {
        userId: 2,
        parts: [{ sessionPartId: 1, isPrimary: true }],
      };

      const mockParticipant = {
        id: 1,
        sessionId,
        userId: dto.userId,
        isPlayer: true,
        isAdmin: false,
        status: 'CONFIRMED',
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      (mockEntityManager.findOne as jest.Mock).mockResolvedValue(null);
      (mockEntityManager.create as jest.Mock).mockReturnValue(mockParticipant);
      (mockEntityManager.save as jest.Mock).mockResolvedValue(mockParticipant);

      mockUserService.getUser.mockResolvedValue(mockUser);
      mockSessionParticipantPartService.findBySessionParticipantId.mockResolvedValue(
        {
          parts: [],
          primaryPartId: 1,
        },
      );

      const result = await service.addSessionParticipant(
        sessionId,
        dto,
        mockUser,
      );

      expect(result.sessionParticipant).toBeDefined();
      expect(mockEntityManager.create).toHaveBeenCalled();
      expect(mockEntityManager.save).toHaveBeenCalled();
    });

    it('should throw BadRequestException if participant already exists', async () => {
      const sessionId = 1;
      const dto = {
        userId: 2,
        parts: [{ sessionPartId: 1, isPrimary: true }],
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      (mockEntityManager.findOne as jest.Mock).mockResolvedValue({
        id: 1,
      });

      await expect(
        service.addSessionParticipant(sessionId, dto, mockUser),
      ).rejects.toThrow(BadRequestException);
    });
  });

  describe('addSessionParticipantParts', () => {
    it('should add secondary parts to participant', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = { sessionPartId: 2 };

      const mockParticipant = {
        id: participantId,
        userId: mockUser.id,
        isPlayer: true,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionParticipantRepository.findOne.mockResolvedValue(
        mockParticipant,
      );
      mockSessionParticipantPartService.create.mockResolvedValue(undefined);

      await service.addSessionParticipantParts(
        sessionId,
        participantId,
        dto,
        mockUser,
      );

      expect(mockSessionParticipantPartService.create).toHaveBeenCalledWith(
        participantId,
        dto.sessionPartId,
        false,
      );
    });

    it('should throw ForbiddenException if user is not the participant', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = { sessionPartId: 2 };

      const mockParticipant = {
        id: participantId,
        userId: 999, // Different user
        isPlayer: true,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionParticipantRepository.findOne.mockResolvedValue(
        mockParticipant,
      );

      await expect(
        service.addSessionParticipantParts(
          sessionId,
          participantId,
          dto,
          mockUser,
        ),
      ).rejects.toThrow(ForbiddenException);
    });
  });

  describe('updateSessionParticipantStatus', () => {
    it('should update participant status', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = {
        status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
      };

      const mockParticipant = {
        id: participantId,
        userId: mockUser.id,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionParticipantRepository.findOne.mockResolvedValue(
        mockParticipant,
      );
      mockSessionParticipantRepository.save.mockResolvedValue({
        ...mockParticipant,
        status: 'CONFIRMED',
      });

      const result = await service.updateSessionParticipantStatus(
        sessionId,
        participantId,
        dto,
        mockUser,
      );

      expect(result.sessionParticipant).toBeDefined();
      expect(mockSessionParticipantRepository.save).toHaveBeenCalled();
    });

    it('should throw NotFoundException if participant not found', async () => {
      const sessionId = 1;
      const participantId = 1;
      const dto = {
        status: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionParticipantRepository.findOne.mockResolvedValue(null);

      await expect(
        service.updateSessionParticipantStatus(
          sessionId,
          participantId,
          dto,
          mockUser,
        ),
      ).rejects.toThrow(NotFoundException);
    });
  });
});
