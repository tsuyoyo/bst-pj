/* eslint-disable @typescript-eslint/unbound-method */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
import { Test, TestingModule } from '@nestjs/testing';
import { ReactionController } from './reaction.controller';
import { ReactionService } from './reaction.service';
import { CreateReactionTypeDto } from './dto/create-reaction-type.dto';
import { UpdateReactionTypeDto } from './dto/update-reaction-type.dto';
import { CreateReactionDto } from './dto/create-reaction.dto';
import { ListReactionTypesDto } from './dto/list-reaction-types.dto';
import { ListReactionsDto } from './dto/list-reactions.dto';
import { User } from '../entities/user.entity';
import { ExternalService } from '../entities/types/external-service.enum';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

describe('ReactionController', () => {
  let controller: ReactionController;
  let service: ReactionService;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'password',
    externalId: '',
    externalService: ExternalService.GOOGLE,
    iconUrl: '',
    profilePictureUrl: '',
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockReactionService = {
    createReactionType: jest.fn(),
    listReactionTypes: jest.fn(),
    getReactionType: jest.fn(),
    updateReactionType: jest.fn(),
    deleteReactionType: jest.fn(),
    createReaction: jest.fn(),
    listReactions: jest.fn(),
    getReaction: jest.fn(),
    deleteReaction: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ReactionController],
      providers: [
        {
          provide: ReactionService,
          useValue: mockReactionService,
        },
        {
          provide: JwtService,
          useValue: {
            sign: jest.fn(),
            verify: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useClass: Repository,
        },
        {
          provide: JwtAuthGuard,
          useValue: {
            canActivate: jest.fn().mockReturnValue(true),
          },
        },
      ],
    }).compile();

    controller = module.get<ReactionController>(ReactionController);
    service = module.get<ReactionService>(ReactionService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createReactionType', () => {
    it('should create a reaction type', async () => {
      const dto: CreateReactionTypeDto = {
        name: 'Like',
        description: 'Like reaction',
        iconUrl: 'https://example.com/like.png',
      };

      const expectedResponse = {
        reactionType: {
          id: 1,
          name: dto.name,
          description: dto.description,
          iconUrl: dto.iconUrl,
          updatedUserId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      };

      mockReactionService.createReactionType.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.createReactionType(dto, mockUser);
      expect(result).toEqual({
        reactionType: {
          id: expect.any(Number),
          name: dto.name,
          description: dto.description,
          iconUrl: dto.iconUrl,
          updatedUserId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      });
      expect(service.createReactionType).toHaveBeenCalledWith(dto, mockUser.id);
    });
  });

  describe('listReactionTypes', () => {
    it('should return a list of reaction types', async () => {
      const dto: ListReactionTypesDto = {
        pageSize: 10,
        pageToken: '',
      };

      const expectedResponse = {
        reactionTypes: [
          {
            id: 1,
            name: 'Like',
            description: 'Like reaction',
            iconUrl: 'https://example.com/like.png',
            user: {
              id: mockUser.id,
              name: mockUser.name,
              icon: mockUser.iconUrl || '',
            },
            createdAt: expect.any(Date),
            updatedAt: expect.any(Date),
          },
        ],
        nextPageToken: '',
        totalSize: 1,
      };

      mockReactionService.listReactionTypes.mockResolvedValue(expectedResponse);

      const result = await controller.listReactionTypes(dto);
      expect(result).toEqual(expectedResponse);
      expect(service.listReactionTypes).toHaveBeenCalledWith(dto);
    });
  });

  describe('getReactionType', () => {
    it('should return a reaction type', async () => {
      const id = 1;
      const expectedResponse = {
        reactionType: {
          id,
          name: 'Like',
          description: 'Like reaction',
          iconUrl: 'https://example.com/like.png',
          updatedUserId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      };

      mockReactionService.getReactionType.mockResolvedValue(expectedResponse);

      const result = await controller.getReactionType(id);
      expect(result).toEqual(expectedResponse);
      expect(service.getReactionType).toHaveBeenCalledWith(id);
    });
  });

  describe('updateReactionType', () => {
    it('should update a reaction type', async () => {
      const id = 1;
      const dto: UpdateReactionTypeDto = {
        reactionTypeId: id,
        name: 'Updated Like',
        description: 'Updated like reaction',
        iconUrl: 'https://example.com/updated-like.png',
      };

      const expectedResponse = {
        reactionType: {
          id,
          name: dto.name,
          description: dto.description,
          iconUrl: dto.iconUrl,
          updatedUserId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      };

      mockReactionService.updateReactionType.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.updateReactionType(id, dto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(service.updateReactionType).toHaveBeenCalledWith(dto, mockUser.id);
    });
  });

  describe('deleteReactionType', () => {
    it('should delete a reaction type', async () => {
      const id = 1;
      const expectedResponse = { success: true };

      mockReactionService.deleteReactionType.mockResolvedValue(
        expectedResponse,
      );

      const result = await controller.deleteReactionType(id);
      expect(result).toEqual(expectedResponse);
      expect(service.deleteReactionType).toHaveBeenCalledWith(id);
    });
  });

  describe('createReaction', () => {
    it('should create a reaction', async () => {
      const dto: CreateReactionDto = {
        targetId: 1,
        reactionTypeId: 1,
      };

      const expectedResponse = {
        reaction: {
          id: 1,
          targetId: dto.targetId,
          reactionTypeId: dto.reactionTypeId,
          userId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      };

      mockReactionService.createReaction.mockResolvedValue(expectedResponse);

      const result = await controller.createReaction(dto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(service.createReaction).toHaveBeenCalledWith(dto, mockUser.id);
    });
  });

  describe('listReactions', () => {
    it('should return a list of reactions', async () => {
      const dto: ListReactionsDto = {
        pageSize: 10,
        pageToken: '',
        targetId: 1,
      };

      const expectedResponse = {
        reactions: [
          {
            id: 1,
            targetId: dto.targetId,
            reactionTypeId: 1,
            userId: mockUser.id,
            createdAt: expect.any(Date),
            updatedAt: expect.any(Date),
          },
        ],
        nextPageToken: '',
        totalSize: 1,
      };

      mockReactionService.listReactions.mockResolvedValue(expectedResponse);

      const result = await controller.listReactions(dto);
      expect(result).toEqual(expectedResponse);
      expect(service.listReactions).toHaveBeenCalledWith(dto);
    });
  });

  describe('getReaction', () => {
    it('should return a reaction', async () => {
      const id = 1;
      const expectedResponse = {
        reaction: {
          id,
          targetId: 1,
          reactionTypeId: 1,
          userId: mockUser.id,
          createdAt: expect.any(Date),
          updatedAt: expect.any(Date),
        },
      };

      mockReactionService.getReaction.mockResolvedValue(expectedResponse);

      const result = await controller.getReaction(id);
      expect(result).toEqual(expectedResponse);
      expect(service.getReaction).toHaveBeenCalledWith(id);
    });
  });

  describe('deleteReaction', () => {
    it('should delete a reaction', async () => {
      const id = 1;
      const expectedResponse = { success: true };

      mockReactionService.deleteReaction.mockResolvedValue(expectedResponse);

      const result = await controller.deleteReaction(id);
      expect(result).toEqual(expectedResponse);
      expect(service.deleteReaction).toHaveBeenCalledWith(id);
    });
  });
});
