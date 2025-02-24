import { Test, TestingModule } from '@nestjs/testing';
import { SessionPartService } from './session-part.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionPart } from '../entities/session-part.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { PartService } from '../part/part.service';
import { User } from '../entities/user.entity';
import { NotFoundException, BadRequestException } from '@nestjs/common';
import { SessionService } from '../session/session.service';

describe('SessionPartService', () => {
  let service: SessionPartService;

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

  const mockSessionPartRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    find: jest.fn(),
    remove: jest.fn(),
  };

  const mockSessionVerifyAccessService = {
    verifySessionAccess: jest.fn(),
  };

  const mockPartService = {
    getPart: jest.fn(),
  };

  const mockSessionService = {
    // SessionServiceのモックを作成
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        SessionPartService,
        {
          provide: getRepositoryToken(SessionPart),
          useValue: mockSessionPartRepository,
        },
        {
          provide: SessionVerifyAccessService,
          useValue: mockSessionVerifyAccessService,
        },
        {
          provide: PartService,
          useValue: mockPartService,
        },
        {
          provide: SessionService,
          useValue: mockSessionService,
        },
      ],
    }).compile();

    service = module.get<SessionPartService>(SessionPartService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('listSessionParts', () => {
    it('should return session parts', async () => {
      const sessionId = 1;
      const mockSessionParts = [
        {
          id: 1,
          partId: 1,
          name: 'Gt1',
          displayOrder: 1,
          maxEntry: 1,
        },
      ];

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.find.mockResolvedValue(mockSessionParts);
      mockPartService.getPart.mockResolvedValue({
        part: {
          id: 1,
          name: 'Guitar',
        },
      });

      const result = await service.listSessionParts(sessionId);
      expect(result.parts).toHaveLength(1);
    });
  });

  describe('addSessionPart', () => {
    it('should add a session part', async () => {
      const sessionId = 1;
      const dto = {
        partId: 1,
        name: 'Gt1',
        displayOrder: 1,
        maxEntry: 1,
        transitionCost: 5,
      };

      const mockSessionPart = {
        id: 1,
        ...dto,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.create.mockReturnValue(mockSessionPart);
      mockSessionPartRepository.save.mockResolvedValue(mockSessionPart);
      mockPartService.getPart.mockResolvedValue({
        part: {
          id: 1,
          name: 'Guitar',
        },
      });

      const result = await service.addSessionPart(sessionId, dto, mockUser);
      expect(result.part).toBeDefined();
      expect(mockSessionPartRepository.save).toHaveBeenCalled();
    });
  });

  describe('updateSessionPart', () => {
    it('should update a session part when maxEntry is increased', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const dto = {
        partId: 1,
        name: 'Gt2',
        displayOrder: 2,
        maxEntry: 3,
      };

      const mockSessionPart = {
        id: sessionPartId,
        sessionId,
        partId: 1,
        name: 'Gt1',
        displayOrder: 1,
        maxEntry: 2,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(mockSessionPart);
      mockSessionPartRepository.save.mockResolvedValue({
        ...mockSessionPart,
        ...dto,
      });
      mockPartService.getPart.mockResolvedValue({
        part: {
          id: 1,
          name: 'Guitar',
        },
      });

      const result = await service.updateSessionPart(
        sessionId,
        sessionPartId,
        dto,
        mockUser,
      );

      expect(result.part).toBeDefined();
      expect(result.part?.maxEntry).toBe(dto.maxEntry);
    });

    it('should throw BadRequestException when trying to reduce maxEntry', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const dto = {
        partId: 1,
        name: 'Gt2',
        displayOrder: 2,
        maxEntry: 1,
      };

      const mockSessionPart = {
        id: sessionPartId,
        sessionId,
        partId: 1,
        name: 'Gt1',
        displayOrder: 1,
        maxEntry: 2,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(mockSessionPart);
      mockPartService.getPart.mockResolvedValue({
        part: {
          id: 1,
          name: 'Guitar',
        },
      });

      await expect(
        service.updateSessionPart(sessionId, sessionPartId, dto, mockUser),
      ).rejects.toThrow(BadRequestException);
    });

    it('should update a session part', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const dto = {
        partId: 1,
        name: 'Gt2',
        displayOrder: 2,
        maxEntry: 1,
      };

      const mockSessionPart = {
        id: sessionPartId,
        sessionId,
        ...dto,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(mockSessionPart);
      mockSessionPartRepository.save.mockResolvedValue(mockSessionPart);
      mockPartService.getPart.mockResolvedValue({
        part: {
          id: 1,
          name: 'Guitar',
        },
      });

      const result = await service.updateSessionPart(
        sessionId,
        sessionPartId,
        dto,
        mockUser,
      );
      expect(result.part).toBeDefined();
    });

    it('should throw NotFoundException if session part not found', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const dto = {
        partId: 1,
        name: 'Gt2',
        displayOrder: 2,
        maxEntry: 1,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(null);

      await expect(
        service.updateSessionPart(sessionId, sessionPartId, dto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteSessionPart', () => {
    it('should delete a session part', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const mockSessionPart = {
        id: sessionPartId,
        sessionId,
      };

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(mockSessionPart);
      mockSessionPartRepository.remove.mockResolvedValue(mockSessionPart);

      const result = await service.deleteSessionPart(
        sessionId,
        sessionPartId,
        mockUser,
      );
      expect(result.success).toBe(true);
    });

    it('should return success false if session part not found', async () => {
      const sessionId = 1;
      const sessionPartId = 1;

      mockSessionVerifyAccessService.verifySessionAccess.mockResolvedValue(
        undefined,
      );
      mockSessionPartRepository.findOne.mockResolvedValue(null);

      const result = await service.deleteSessionPart(
        sessionId,
        sessionPartId,
        mockUser,
      );
      expect(result.success).toBe(false);
    });
  });
});
