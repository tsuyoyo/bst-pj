import { Test, TestingModule } from '@nestjs/testing';
import { SessionPartController } from './session-part.controller';
import { SessionPartService } from './session-part.service';
import { User } from '../entities/user.entity';
import { AddSessionPartDto } from './dto/add-session-part.dto';
import { UpdateSessionPartDto } from './dto/update-session-part.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('SessionPartController', () => {
  let controller: SessionPartController;

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

  const mockSessionPartService = {
    listSessionParts: jest.fn(),
    addSessionPart: jest.fn(),
    updateSessionPart: jest.fn(),
    deleteSessionPart: jest.fn(),
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
      controllers: [SessionPartController],
      providers: [
        {
          provide: SessionPartService,
          useValue: mockSessionPartService,
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

    controller = module.get<SessionPartController>(SessionPartController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('listSessionParts', () => {
    it('should return session parts', async () => {
      const sessionId = 1;
      const expectedResponse = {
        parts: [
          {
            id: '1',
            part: {
              id: 1,
              name: 'Guitar',
            },
            name: 'Gt1',
            displayOrder: 1,
            maxEntry: 1,
          },
        ],
      };

      mockSessionPartService.listSessionParts.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.listSessionParts(sessionId);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionPartService.listSessionParts).toHaveBeenCalledWith(
        sessionId,
        mockUser,
      );
    });
  });

  describe('addSessionPart', () => {
    it('should add a session part', async () => {
      const sessionId = 1;
      const dto: AddSessionPartDto = {
        partId: 1,
        name: 'Gt1',
        displayOrder: 1,
        maxEntry: 1,
        transitionCost: 5,
      };

      const expectedResponse = {
        part: {
          part: {
            id: 1,
            name: 'Guitar',
          },
          name: 'Gt1',
          displayOrder: 1,
          maxEntry: 1,
        },
      };

      mockSessionPartService.addSessionPart.mockResolvedValue(expectedResponse);

      const result = await controller.addSessionPart(sessionId, dto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionPartService.addSessionPart).toHaveBeenCalledWith(
        sessionId,
        dto,
        mockUser,
      );
    });
  });

  describe('updateSessionPart', () => {
    it('should update a session part', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const dto: UpdateSessionPartDto = {
        partId: 1,
        name: 'Gt2',
        displayOrder: 2,
        maxEntry: 1,
      };

      const expectedResponse = {
        part: {
          part: {
            id: 1,
            name: 'Guitar',
          },
          name: 'Gt2',
          displayOrder: 2,
          maxEntry: 1,
        },
      };

      mockSessionPartService.updateSessionPart.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.updateSessionPart(
        sessionId,
        sessionPartId,
        dto,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockSessionPartService.updateSessionPart).toHaveBeenCalledWith(
        sessionId,
        sessionPartId,
        dto,
        mockUser,
      );
    });
  });

  describe('deleteSessionPart', () => {
    it('should delete a session part', async () => {
      const sessionId = 1;
      const sessionPartId = 1;
      const expectedResponse = { success: true };

      mockSessionPartService.deleteSessionPart.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.deleteSessionPart(
        sessionId,
        sessionPartId,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockSessionPartService.deleteSessionPart).toHaveBeenCalledWith(
        sessionId,
        sessionPartId,
        mockUser,
      );
    });
  });
});
