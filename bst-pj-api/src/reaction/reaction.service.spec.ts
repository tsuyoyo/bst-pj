/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { ReactionService } from './reaction.service';
import { ReactionType } from '../entities/reaction-type.entity';
import { Reaction, ReactionTargetType } from '../entities/reaction.entity';
import { User } from '../entities/user.entity';
import { NotFoundException } from '@nestjs/common';
import { ExternalService } from '../entities/types/external-service.enum';

describe('ReactionService', () => {
  let service: ReactionService;
  let reactionTypeRepository: Repository<ReactionType>;
  let reactionRepository: Repository<Reaction>;
  let userRepository: Repository<User>;

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

  const mockReactionType: ReactionType = {
    id: 1,
    name: 'Like',
    description: 'Like reaction',
    iconUrl: 'https://example.com/like.png',
    updatedUserId: mockUser.id,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockReaction: Reaction = {
    id: 1,
    targetId: 1,
    userId: mockUser.id,
    reactionTypeId: mockReactionType.id,
    reactionType: mockReactionType,
    targetType: ReactionTargetType.Thread,
    user: mockUser,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ReactionService,
        {
          provide: getRepositoryToken(ReactionType),
          useClass: Repository,
        },
        {
          provide: getRepositoryToken(Reaction),
          useClass: Repository,
        },
        {
          provide: getRepositoryToken(User),
          useClass: Repository,
        },
      ],
    }).compile();

    service = module.get<ReactionService>(ReactionService);
    reactionTypeRepository = module.get<Repository<ReactionType>>(
      getRepositoryToken(ReactionType),
    );
    reactionRepository = module.get<Repository<Reaction>>(
      getRepositoryToken(Reaction),
    );
    userRepository = module.get<Repository<User>>(getRepositoryToken(User));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createReactionType', () => {
    it('should create a reaction type', async () => {
      const createReactionTypeDto = {
        name: 'Like',
        description: 'Like reaction',
        iconUrl: 'https://example.com/like.png',
      };

      jest
        .spyOn(reactionTypeRepository, 'create')
        .mockReturnValue(mockReactionType);
      jest
        .spyOn(reactionTypeRepository, 'save')
        .mockResolvedValue(mockReactionType);

      const result = await service.createReactionType(
        createReactionTypeDto,
        mockUser.id,
      );

      expect(result.reactionType).toEqual(mockReactionType);
      expect(reactionTypeRepository.create).toHaveBeenCalledWith({
        ...createReactionTypeDto,
        updatedUserId: mockUser.id,
      });
      expect(reactionTypeRepository.save).toHaveBeenCalledWith(
        mockReactionType,
      );
    });
  });

  describe('listReactionTypes', () => {
    it('should return a list of reaction types', async () => {
      const listReactionTypesDto = {
        pageSize: 10,
        pageToken: '',
      };

      const mockReactionTypes = [mockReactionType];
      const totalCount = 1;

      jest
        .spyOn(reactionTypeRepository, 'findAndCount')
        .mockResolvedValue([mockReactionTypes, totalCount]);

      const result = await service.listReactionTypes(listReactionTypesDto);

      expect(result.reactionTypes).toEqual(mockReactionTypes);
      expect(result.totalSize).toBe(totalCount);
      expect(result.nextPageToken).toBe('');
    });
  });

  describe('getReactionType', () => {
    it('should return a reaction type', async () => {
      jest
        .spyOn(reactionTypeRepository, 'findOne')
        .mockResolvedValue(mockReactionType);

      const result = await service.getReactionType(1);

      expect(result.reactionType).toEqual(mockReactionType);
    });

    it('should throw NotFoundException when reaction type is not found', async () => {
      jest.spyOn(reactionTypeRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getReactionType(1)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('updateReactionType', () => {
    it('should update a reaction type', async () => {
      const updateReactionTypeDto = {
        reactionTypeId: 1,
        name: 'Updated Like',
        description: 'Updated like reaction',
        iconUrl: 'https://example.com/updated-like.png',
      };

      const updatedReactionType = {
        ...mockReactionType,
        name: updateReactionTypeDto.name,
        description: updateReactionTypeDto.description,
        iconUrl: updateReactionTypeDto.iconUrl,
      };

      jest
        .spyOn(reactionTypeRepository, 'findOne')
        .mockResolvedValue(mockReactionType);
      jest
        .spyOn(reactionTypeRepository, 'save')
        .mockResolvedValue(updatedReactionType);

      const result = await service.updateReactionType(
        updateReactionTypeDto,
        mockUser.id,
      );

      expect(result.reactionType).toEqual(updatedReactionType);
    });

    it('should throw NotFoundException when reaction type is not found', async () => {
      jest.spyOn(reactionTypeRepository, 'findOne').mockResolvedValue(null);

      await expect(
        service.updateReactionType(
          {
            reactionTypeId: 1,
            name: 'Updated Like',
          },
          mockUser.id,
        ),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteReactionType', () => {
    it('should delete a reaction type', async () => {
      jest
        .spyOn(reactionTypeRepository, 'delete')
        .mockResolvedValue({ affected: 1, raw: {} });

      const result = await service.deleteReactionType(1);

      expect(result.success).toBe(true);
    });

    it('should return false when no reaction type is deleted', async () => {
      jest
        .spyOn(reactionTypeRepository, 'delete')
        .mockResolvedValue({ affected: 0, raw: {} });

      const result = await service.deleteReactionType(1);

      expect(result.success).toBe(false);
    });
  });

  describe('createReaction', () => {
    it('should create a reaction', async () => {
      const createReactionDto = {
        targetId: 1,
        reactionTypeId: 1,
      };

      jest
        .spyOn(reactionTypeRepository, 'findOne')
        .mockResolvedValue(mockReactionType);
      jest.spyOn(reactionRepository, 'create').mockReturnValue(mockReaction);
      jest.spyOn(reactionRepository, 'save').mockResolvedValue(mockReaction);
      jest.spyOn(reactionRepository, 'findOne').mockResolvedValue(mockReaction);
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser);

      const result = await service.createReaction(
        createReactionDto,
        mockUser.id,
      );

      expect(result.reaction).toBeDefined();
      expect(reactionRepository.create).toHaveBeenCalledWith({
        targetId: createReactionDto.targetId,
        userId: mockUser.id,
        reactionTypeId: createReactionDto.reactionTypeId,
      });
    });

    it('should throw NotFoundException when reaction type is not found', async () => {
      jest.spyOn(reactionTypeRepository, 'findOne').mockResolvedValue(null);

      await expect(
        service.createReaction(
          {
            targetId: 1,
            reactionTypeId: 1,
          },
          mockUser.id,
        ),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('listReactions', () => {
    it('should return a list of reactions', async () => {
      const listReactionsDto = {
        targetId: 1,
        pageSize: 10,
        pageToken: '',
      };

      const mockReactions = [mockReaction];
      const totalCount = 1;

      jest
        .spyOn(reactionRepository, 'findAndCount')
        .mockResolvedValue([mockReactions, totalCount]);
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser);

      const result = await service.listReactions(listReactionsDto);

      expect(result.reactions).toBeDefined();
      expect(result.totalSize).toBe(totalCount);
      expect(result.nextPageToken).toBe('');
    });
  });

  describe('getReaction', () => {
    it('should return a reaction', async () => {
      jest.spyOn(reactionRepository, 'findOne').mockResolvedValue(mockReaction);
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser);

      const result = await service.getReaction(1);

      expect(result.reaction).toBeDefined();
    });

    it('should throw NotFoundException when reaction is not found', async () => {
      jest.spyOn(reactionRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getReaction(1)).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteReaction', () => {
    it('should delete a reaction', async () => {
      jest
        .spyOn(reactionRepository, 'delete')
        .mockResolvedValue({ affected: 1, raw: {} });

      const result = await service.deleteReaction(1);

      expect(result.success).toBe(true);
    });

    it('should return false when no reaction is deleted', async () => {
      jest
        .spyOn(reactionRepository, 'delete')
        .mockResolvedValue({ affected: 0, raw: {} });

      const result = await service.deleteReaction(1);

      expect(result.success).toBe(false);
    });
  });
});
