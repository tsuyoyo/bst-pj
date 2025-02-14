/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CommentService } from './comment.service';
import { Comment } from '../entities/comment.entity';
import { CommentTargetType } from '../entities/comment.entity';
import { NotFoundException } from '@nestjs/common';

describe('CommentService', () => {
  let service: CommentService;
  let repository: Repository<Comment>;

  const mockComment: Comment = {
    id: 1,
    targetType: CommentTargetType.Thread,
    targetId: 1,
    userId: 1,
    content: 'Test comment',
    createdAt: new Date(),
    updatedAt: new Date(),
    user: {
      id: 1,
      name: 'Test User',
      email: 'test@example.com',
      password: 'password',
      externalId: 'external-id',
      externalService: null,
      iconUrl: 'icon-url',
      profilePictureUrl: 'profile-url',
      createdAt: new Date(),
      updatedAt: new Date(),
    },
  };

  const mockRepository = {
    findOne: jest.fn(),
    create: jest.fn(),
    save: jest.fn(),
    remove: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        CommentService,
        {
          provide: getRepositoryToken(Comment),
          useValue: mockRepository,
        },
      ],
    }).compile();

    service = module.get<CommentService>(CommentService);
    repository = module.get<Repository<Comment>>(getRepositoryToken(Comment));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('getComment', () => {
    it('should return a comment', async () => {
      mockRepository.findOne.mockResolvedValue(mockComment);
      const result = await service.getComment({ id: 1 });
      expect(result).toEqual(mockComment);
      expect(repository.findOne).toHaveBeenCalledWith({
        where: { id: 1 },
        relations: ['user'],
      });
    });

    it('should throw NotFoundException when comment is not found', async () => {
      mockRepository.findOne.mockResolvedValue(null);
      await expect(service.getComment({ id: 1 })).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('postComment', () => {
    it('should create and return a comment', async () => {
      const createCommentDto = {
        content: 'Test comment',
        threadId: 1,
        userId: 1,
      };

      mockRepository.create.mockReturnValue(mockComment);
      mockRepository.save.mockResolvedValue(mockComment);

      const result = await service.postComment(createCommentDto);
      expect(result).toEqual(mockComment);
      expect(repository.create).toHaveBeenCalledWith({
        content: createCommentDto.content,
        targetType: CommentTargetType.Thread,
        targetId: createCommentDto.threadId,
        userId: createCommentDto.userId,
      });
      expect(repository.save).toHaveBeenCalledWith(mockComment);
    });
  });

  describe('deleteComment', () => {
    it('should delete a comment and return success', async () => {
      mockRepository.findOne.mockResolvedValue(mockComment);
      mockRepository.remove.mockResolvedValue(mockComment);

      const result = await service.deleteComment(1);
      expect(result).toEqual({ success: true });
      expect(repository.findOne).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(repository.remove).toHaveBeenCalledWith(mockComment);
    });

    it('should throw NotFoundException when comment to delete is not found', async () => {
      mockRepository.findOne.mockResolvedValue(null);
      await expect(service.deleteComment(1)).rejects.toThrow(NotFoundException);
    });
  });

  describe('updateComment', () => {
    it('should update and return a comment', async () => {
      const updateCommentDto = {
        content: 'Updated comment',
      };

      const updatedComment = {
        ...mockComment,
        content: updateCommentDto.content,
      };

      mockRepository.findOne.mockResolvedValue(mockComment);
      mockRepository.save.mockResolvedValue(updatedComment);

      const result = await service.updateComment(1, updateCommentDto);
      expect(result).toEqual(updatedComment);
      expect(repository.findOne).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(repository.save).toHaveBeenCalledWith(updatedComment);
    });

    it('should throw Error when comment to update is not found', async () => {
      mockRepository.findOne.mockResolvedValue(null);
      await expect(
        service.updateComment(1, { content: 'Updated comment' }),
      ).rejects.toThrow('Comment not found');
    });
  });
});
