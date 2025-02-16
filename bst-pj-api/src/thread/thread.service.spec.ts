/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { ThreadService } from './thread.service';
import { Thread } from '../entities/thread.entity';
import { Comment } from '../entities/comment.entity';
import { UserService } from '../user/user.service';
import { ThreadContextType } from '../entities/thread.entity';
import { CommentTargetType } from '../entities/comment.entity';
import { NotFoundException, ForbiddenException } from '@nestjs/common';
import { User } from '../entities/user.entity';

describe('ThreadService', () => {
  let service: ThreadService;
  let threadRepository: Repository<Thread>;
  let commentRepository: Repository<Comment>;
  let userService: UserService;

  const mockUser: User = {
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

  const mockThread: Thread = {
    id: 1,
    title: 'Test Thread',
    description: 'Test Description',
    createdBy: 1,
    contextType: ThreadContextType.Global,
    contextId: 0,
    creator: mockUser,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockComment: Comment = {
    id: 1,
    content: 'Test Comment',
    targetType: CommentTargetType.Thread,
    targetId: 1,
    userId: 1,
    user: mockUser,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockThreadRepository = {
    save: jest.fn().mockResolvedValue(mockThread),
    findOne: jest.fn().mockResolvedValue(mockThread),
    find: jest.fn().mockResolvedValue([mockThread]),
    delete: jest.fn().mockResolvedValue({ affected: 1 }),
  };

  const mockCommentRepository = {
    findAndCount: jest.fn().mockResolvedValue([[mockComment], 1]),
  };

  const mockUserService = {
    mapUserToProto: jest.fn().mockReturnValue({
      id: mockUser.id,
      name: mockUser.name,
      iconUrl: mockUser.iconUrl,
    }),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ThreadService,
        {
          provide: getRepositoryToken(Thread),
          useValue: mockThreadRepository,
        },
        {
          provide: getRepositoryToken(Comment),
          useValue: mockCommentRepository,
        },
        {
          provide: UserService,
          useValue: mockUserService,
        },
      ],
    }).compile();

    service = module.get<ThreadService>(ThreadService);
    threadRepository = module.get<Repository<Thread>>(
      getRepositoryToken(Thread),
    );
    commentRepository = module.get<Repository<Comment>>(
      getRepositoryToken(Comment),
    );
    userService = module.get<UserService>(UserService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createThread', () => {
    it('should create a thread', async () => {
      const request = {
        title: 'Test Thread',
        description: 'Test Description',
        userId: 1,
      };

      const result = await service.createThread(request);

      expect(result).toBeDefined();
      expect(threadRepository.save).toHaveBeenCalledWith({
        title: request.title,
        description: request.description,
        createdBy: request.userId,
        contextType: ThreadContextType.Global,
      });
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });
  });

  describe('createThreadInSession', () => {
    it('should create a thread in session', async () => {
      const request = {
        title: 'Test Thread',
        description: 'Test Description',
        userId: 1,
        sessionId: 1,
      };

      const result = await service.createThreadInSession(request);

      expect(result).toBeDefined();
      expect(threadRepository.save).toHaveBeenCalledWith({
        title: request.title,
        description: request.description,
        createdBy: request.userId,
        contextType: ThreadContextType.Session,
        contextId: request.sessionId,
      });
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });
  });

  describe('getThread', () => {
    it('should get a thread', async () => {
      const result = await service.getThread({ id: 1 });

      expect(result).toBeDefined();
      expect(threadRepository.findOne).toHaveBeenCalled();
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });

    it('should throw NotFoundException when thread not found', async () => {
      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce(null);

      await expect(service.getThread({ id: 999 })).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('getThreadsInSession', () => {
    it('should get threads in session', async () => {
      const result = await service.getThreadsInSession({ sessionId: 1 });

      expect(result).toBeDefined();
      expect(result.threads).toHaveLength(1);
      expect(threadRepository.find).toHaveBeenCalled();
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });
  });

  describe('getThreadComments', () => {
    it('should get thread comments', async () => {
      const result = await service.getThreadComments({
        threadId: 1,
        page: 1,
        limit: 10,
      });

      expect(result).toBeDefined();
      expect(result.comments).toHaveLength(1);
      expect(commentRepository.findAndCount).toHaveBeenCalled();
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });
  });

  describe('updateThread', () => {
    it('should update a thread', async () => {
      const request = {
        id: 1,
        title: 'Updated Thread',
        description: 'Updated Description',
      };

      const result = await service.updateThread(request);

      expect(result).toBeDefined();
      expect(threadRepository.findOne).toHaveBeenCalledWith({
        where: { id: request.id },
      });
      expect(threadRepository.save).toHaveBeenCalledWith({
        ...mockThread,
        title: request.title,
        description: request.description,
      });
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });

    it('should throw NotFoundException when thread not found', async () => {
      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce(null);

      await expect(
        service.updateThread({
          id: 999,
          title: 'Updated Thread',
          description: 'Updated Description',
        }),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('updateThreadTitle', () => {
    it('should update a thread title', async () => {
      const id = 1;
      const title = 'Updated Thread Title';

      const result = await service.updateThreadTitle(id, title);

      expect(result).toBeDefined();
      expect(threadRepository.findOne).toHaveBeenCalledWith({
        where: { id },
      });
      expect(threadRepository.save).toHaveBeenCalledWith({
        ...mockThread,
        title,
      });
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });

    it('should throw NotFoundException when thread not found', async () => {
      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce(null);

      await expect(
        service.updateThreadTitle(999, 'Updated Thread Title'),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('updateThreadDescription', () => {
    it('should update a thread description', async () => {
      const id = 1;
      const description = 'Updated Thread Description';

      const result = await service.updateThreadDescription(id, description);

      expect(result).toBeDefined();
      expect(threadRepository.findOne).toHaveBeenCalledWith({
        where: { id },
      });
      expect(threadRepository.save).toHaveBeenCalledWith({
        ...mockThread,
        description,
      });
      expect(userService.mapUserToProto).toHaveBeenCalled();
    });

    it('should throw NotFoundException when thread not found', async () => {
      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce(null);

      await expect(
        service.updateThreadDescription(999, 'Updated Thread Description'),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteThread', () => {
    it('should delete a thread', async () => {
      const request = {
        id: 1,
        userId: 1,
      };

      const result = await service.deleteThread(request.id, request.userId);

      expect(result).toBeDefined();
      expect(result.success).toBe(true);
      expect(threadRepository.delete).toHaveBeenCalledWith(request.id);
    });

    it('should throw NotFoundException when thread not found', async () => {
      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce(null);

      await expect(service.deleteThread(999, 1)).rejects.toThrow(
        NotFoundException,
      );
    });

    it('should throw ForbiddenException when user is not the creator', async () => {
      const request = {
        id: 1,
        userId: 2,
      };

      jest.spyOn(threadRepository, 'findOne').mockResolvedValueOnce({
        ...mockThread,
        createdBy: 1,
      });

      await expect(
        service.deleteThread(request.id, request.userId),
      ).rejects.toThrow(ForbiddenException);
    });
  });
});
