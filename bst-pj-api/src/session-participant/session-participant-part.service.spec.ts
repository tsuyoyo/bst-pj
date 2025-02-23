import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionParticipantPartService } from './session-participant-part.service';
import { SessionParticipantPart } from '../entities/session-participant-part.entity';
import { SessionPartService } from '../session-part/session-part.service';
import {
  SessionParticipant,
  SessionParticipantStatus,
} from '../entities/session-participant.entity';
import { ExternalService } from '../entities/types/external-service.enum';
import { SessionPart } from '../entities/session-part.entity';

describe('SessionParticipantPartService', () => {
  let service: SessionParticipantPartService;

  const mockSessionParticipantPartRepository = {
    find: jest.fn(),
    create: jest.fn(),
    save: jest.fn(),
    delete: jest.fn(),
  };

  const mockSessionPartService = {
    getSessionPart: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionParticipantPartService,
        {
          provide: getRepositoryToken(SessionParticipantPart),
          useValue: mockSessionParticipantPartRepository,
        },
        {
          provide: SessionPartService,
          useValue: mockSessionPartService,
        },
      ],
    }).compile();

    service = module.get<SessionParticipantPartService>(
      SessionParticipantPartService,
    );
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('findBySessionParticipantId', () => {
    it('should return parts and primaryPartId', async () => {
      const sessionParticipantId = 1;
      const mockParts = [
        {
          id: 1,
          sessionParticipantId,
          sessionPartId: 1,
          isPrimary: true,
          displayOrder: 1,
          maxEntryCount: 1,
          transitionCost: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
          sessionPart: {
            id: 1,
            name: 'Guitar',
            displayOrder: 1,
            maxEntry: 1,
          },
          sessionParticipant: {
            id: 1,
            name: 'Participant 1',
          },
        },
        {
          id: 2,
          sessionParticipantId,
          sessionPartId: 2,
          isPrimary: false,
          displayOrder: 2,
          maxEntryCount: 2,
          transitionCost: 2,
          createdAt: new Date(),
          updatedAt: new Date(),
          sessionPart: {
            id: 2,
            name: 'Bass',
            displayOrder: 2,
            maxEntry: 2,
          },
          sessionParticipant: {
            id: 1,
            name: 'Participant 1',
          },
        },
      ];

      const mockProtoSessionPart = {
        id: 1,
        name: 'Guitar',
        displayOrder: 1,
        maxEntry: 1,
      };

      mockSessionParticipantPartRepository.find.mockResolvedValue(mockParts);
      mockSessionPartService.getSessionPart.mockResolvedValue(
        mockProtoSessionPart,
      );

      const result =
        await service.findBySessionParticipantId(sessionParticipantId);

      expect(result.parts).toHaveLength(2);
      expect(result.primaryPartId).toBe(mockParts[0].id);
      expect(mockSessionParticipantPartRepository.find).toHaveBeenCalledWith({
        where: { sessionParticipantId },
      });
    });

    it('should return first part id as primaryPartId when no primary part exists', async () => {
      const sessionParticipantId = 1;
      const mockParts = [
        {
          id: 1,
          sessionParticipantId,
          sessionPartId: 1,
          isPrimary: false,
          displayOrder: 1,
          maxEntryCount: 1,
          transitionCost: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
          sessionPart: {
            id: 1,
            name: 'Guitar',
            displayOrder: 1,
            maxEntry: 1,
          },
          sessionParticipant: {
            id: 1,
            name: 'Participant 1',
          },
        },
        {
          id: 2,
          sessionParticipantId,
          sessionPartId: 2,
          isPrimary: false,
          displayOrder: 2,
          maxEntryCount: 2,
          transitionCost: 2,
          createdAt: new Date(),
          updatedAt: new Date(),
          sessionPart: {
            id: 2,
            name: 'Bass',
            displayOrder: 2,
            maxEntry: 2,
          },
          sessionParticipant: {
            id: 1,
            name: 'Participant 1',
          },
        },
      ];

      const mockProtoSessionPart = {
        id: 1,
        name: 'Guitar',
        displayOrder: 1,
        maxEntry: 1,
      };

      mockSessionParticipantPartRepository.find.mockResolvedValue(mockParts);
      mockSessionPartService.getSessionPart.mockResolvedValue(
        mockProtoSessionPart,
      );

      const result =
        await service.findBySessionParticipantId(sessionParticipantId);

      expect(result.primaryPartId).toBe(mockParts[0].id);
    });
  });

  describe('create', () => {
    it('should create a new session participant part', async () => {
      const sessionParticipantId = 1;
      const sessionPartId = 1;
      const isPrimary = true;

      const mockPart = {
        sessionParticipantId,
        sessionPartId,
        isPrimary,
      };

      mockSessionParticipantPartRepository.create.mockReturnValue(mockPart);
      mockSessionParticipantPartRepository.save.mockResolvedValue(mockPart);

      await service.create(sessionParticipantId, sessionPartId, isPrimary);

      expect(mockSessionParticipantPartRepository.create).toHaveBeenCalledWith({
        sessionParticipantId,
        sessionPartId,
        isPrimary,
      });
      expect(mockSessionParticipantPartRepository.save).toHaveBeenCalledWith(
        mockPart,
      );
    });
  });

  describe('delete', () => {
    it('should delete session participant parts', async () => {
      const sessionParticipantId = 1;

      await service.delete(sessionParticipantId);

      expect(mockSessionParticipantPartRepository.delete).toHaveBeenCalledWith({
        sessionParticipantId,
      });
    });
  });

  describe('mapToProto', () => {
    it('should map entity parts to proto parts', async () => {
      const mockUser = {
        id: 1,
        name: 'Participant 1',
        externalId: '1234567890',
        externalService: ExternalService.GOOGLE,
        email: 'participant1@example.com',
        password: 'password',
        iconUrl: 'https://example.com/icon.png',
        profilePictureUrl: 'https://example.com/profile.png',
        createdAt: new Date(),
        updatedAt: new Date(),
      };
      const mockSessionParticipant: SessionParticipant = {
        id: 1,
        userId: 1,
        sessionId: 1,
        status: SessionParticipantStatus.Confirmed,
        isAdmin: false,
        isPlayer: true,
        createdAt: new Date(),
        updatedAt: new Date(),
        user: mockUser,
      };
      const mockSessionPart: SessionPart = {
        id: 1,
        name: 'Guitar',
        displayOrder: 1,
        maxEntry: 1,
        createdAt: new Date(),
        updatedAt: new Date(),
        sessionId: 1,
        partId: 1,
        transitionCost: 1,
        notes: 'notes',
        part: {
          id: 1,
          name: 'Guitar',
          description: 'Guitar',
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      };
      const mockPart: SessionParticipantPart = {
        id: 1,
        sessionParticipantId: 1,
        sessionPartId: 1,
        isPrimary: true,
        transitionCost: 1,
        createdAt: new Date(),
        updatedAt: new Date(),
        sessionParticipant: mockSessionParticipant,
        sessionPart: mockSessionPart,
        displayOrder: 1,
        maxEntryCount: 1,
      };
      const mockParts = [mockPart];

      const mockProtoSessionPart = {
        id: 1,
        name: 'Guitar',
        displayOrder: 1,
        maxEntry: 1,
      };

      mockSessionPartService.getSessionPart.mockResolvedValue(
        mockProtoSessionPart,
      );

      const result = await service.mapToProto(mockParts);

      expect(result.parts).toHaveLength(1);
      expect(result.parts[0]).toEqual(mockProtoSessionPart);
      expect(result.primaryPartId).toBe(mockParts[0].id);
      expect(mockSessionPartService.getSessionPart).toHaveBeenCalledWith(
        mockParts[0].sessionPartId,
      );
    });
  });
});
