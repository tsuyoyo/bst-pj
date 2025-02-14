/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { CommentController } from './comment.controller';
import { CommentService } from './comment.service';
import { Comment } from '../entities/comment.entity';
import { CommentTargetType } from '../entities/comment.entity';
import { PostCommentDto } from './dto/post-comment.dto';
import { UpdateCommentDto } from './dto/update-comment.dto';
import { JwtModule } from '@nestjs/jwt';
import { ConfigModule } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import { User } from '../entities/user.entity';

describe('CommentController', () => {
  let controller: CommentController;
  let service: CommentService;

  const mockUser = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'password',
    externalId: null,
    externalService: null,
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockComment: Comment = {
    id: 1,
    targetType: CommentTargetType.Thread,
    targetId: 1,
    userId: 1,
    content: 'Test comment',
    createdAt: new Date(),
    updatedAt: new Date(),
    user: mockUser,
  };

  const mockCommentService = {
    getComment: jest.fn(),
    postComment: jest.fn(),
    deleteComment: jest.fn(),
    updateComment: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [
        JwtModule.register({
          secret: 'test-secret',
          signOptions: { expiresIn: '1h' },
        }),
        ConfigModule.forRoot(),
      ],
      controllers: [CommentController],
      providers: [
        {
          provide: CommentService,
          useValue: mockCommentService,
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn(),
          },
        },
      ],
    }).compile();

    controller = module.get<CommentController>(CommentController);
    service = module.get<CommentService>(CommentService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('getComment', () => {
    it('should get a comment by id', async () => {
      mockCommentService.getComment.mockResolvedValue(mockComment);
      const result = await controller.getComment(1);
      expect(result).toEqual({ comment: mockComment });
      expect(service.getComment).toHaveBeenCalledWith({ id: 1 });
    });
  });

  describe('postComment', () => {
    it('should create a new comment', async () => {
      const dto: PostCommentDto = {
        content: 'Test comment',
        threadId: 1,
        userId: 1,
      };

      mockCommentService.postComment.mockResolvedValue(mockComment);
      const result = await controller.postComment(dto, mockUser);
      expect(result).toEqual({ comment: mockComment });
      expect(service.postComment).toHaveBeenCalledWith({
        ...dto,
        userId: mockUser.id,
      });
    });
  });

  describe('deleteComment', () => {
    it('should delete a comment', async () => {
      mockCommentService.deleteComment.mockResolvedValue({ success: true });
      const result = await controller.deleteComment(1);
      expect(result).toEqual({ success: true });
      expect(service.deleteComment).toHaveBeenCalledWith(1);
    });
  });

  describe('updateComment', () => {
    it('should update a comment', async () => {
      const dto: UpdateCommentDto = {
        content: 'Updated comment',
      };

      mockCommentService.updateComment.mockResolvedValue(mockComment);
      const result = await controller.updateComment(1, dto);
      expect(result).toEqual({ comment: mockComment });
      expect(service.updateComment).toHaveBeenCalledWith(1, dto);
    });
  });
});
