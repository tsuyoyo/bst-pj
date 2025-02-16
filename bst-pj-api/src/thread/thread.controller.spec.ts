/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { ThreadController } from './thread.controller';
import { ThreadService } from './thread.service';
import { User } from '../entities/user.entity';
import { Thread } from '../proto/bst/v1/communication';
import {
  GetThreadCommentsResponse,
  GetThreadsInSessionResponse,
} from '../proto/bst/v1/thread_service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { UpdateThreadTitleDto } from './dto/update-thread-title.dto';
import { UpdateThreadDescriptionDto } from './dto/update-thread-description.dto';
import { UpdateThreadDto } from './dto/update-thread.dto';
describe('ThreadController', () => {
  let controller: ThreadController;
  let service: ThreadService;

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
    createdBy: {
      id: 1,
      name: 'Test User',
      icon: 'https://example.com/icon.png',
    },
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockThreadService = {
    createThread: jest.fn().mockResolvedValue(mockThread),
    createThreadInSession: jest.fn().mockResolvedValue(mockThread),
    getThread: jest.fn().mockResolvedValue(mockThread),
    getThreadsInSession: jest.fn().mockResolvedValue({
      threads: [mockThread],
    } as GetThreadsInSessionResponse),
    getThreadComments: jest.fn().mockResolvedValue({
      comments: [
        {
          id: 1,
          content: 'Test Comment',
          createdAt: new Date(),
          updatedAt: new Date(),
          mentions: [],
          userId: 1,
          threadId: 1,
        },
      ],
      nextPage: 0,
    } as GetThreadCommentsResponse),
    updateThread: jest.fn().mockResolvedValue(mockThread),
    updateThreadTitle: jest.fn().mockResolvedValue(mockThread),
    updateThreadDescription: jest.fn().mockResolvedValue(mockThread),
  };

  const mockJwtService = {
    sign: jest.fn(),
    verify: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ThreadController],
      providers: [
        {
          provide: ThreadService,
          useValue: mockThreadService,
        },
        {
          provide: JwtService,
          useValue: mockJwtService,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<ThreadController>(ThreadController);
    service = module.get<ThreadService>(ThreadService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createThread', () => {
    it('should create a thread', async () => {
      const request = {
        title: 'Test Thread',
        description: 'Test Description',
        userId: 1,
      };

      const result = await controller.createThread(request, mockUser);

      expect(result).toEqual(mockThread);
      expect(service.createThread).toHaveBeenCalledWith({
        ...request,
        userId: mockUser.id,
      });
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

      const result = await controller.createThreadInSession(request, mockUser);

      expect(result).toEqual(mockThread);
      expect(service.createThreadInSession).toHaveBeenCalledWith({
        ...request,
        userId: mockUser.id,
      });
    });
  });

  describe('getThread', () => {
    it('should get a thread by id', async () => {
      const result = await controller.getThread(1);

      expect(result).toEqual(mockThread);
      expect(service.getThread).toHaveBeenCalledWith({ id: 1 });
    });
  });

  describe('getThreadsInSession', () => {
    it('should get threads in session', async () => {
      const result = await controller.getThreadsInSession(1);

      expect(result).toEqual({ threads: [mockThread] });
      expect(service.getThreadsInSession).toHaveBeenCalledWith({
        sessionId: 1,
      });
    });
  });

  describe('getThreadComments', () => {
    it('should get thread comments with default pagination', async () => {
      const result = await controller.getThreadComments(1);

      expect(result.comments).toHaveLength(1);
      expect(result.nextPage).toBe(0);
      expect(service.getThreadComments).toHaveBeenCalledWith({
        threadId: 1,
        page: 1,
        limit: 20,
      });
    });

    it('should get thread comments with custom pagination', async () => {
      const result = await controller.getThreadComments(1, 2, 10);

      expect(result.comments).toHaveLength(1);
      expect(result.nextPage).toBe(0);
      expect(service.getThreadComments).toHaveBeenCalledWith({
        threadId: 1,
        page: 2,
        limit: 10,
      });
    });
  });

  describe('updateThread', () => {
    it('should update a thread', async () => {
      const id = 1;
      const request: UpdateThreadDto = {
        id: 0,
        title: 'Updated Thread',
        description: 'Updated Description',
      };

      const result = await controller.updateThread(id, request);

      expect(result).toEqual(mockThread);
      expect(service.updateThread).toHaveBeenCalledWith({
        ...request,
        id,
      });
    });
  });

  describe('updateThreadTitle', () => {
    it('should update a thread title', async () => {
      const id = 1;
      const request: UpdateThreadTitleDto = {
        title: 'Updated Thread Title',
      };

      const result = await controller.updateThreadTitle(id, request);

      expect(result).toEqual(mockThread);
      expect(service.updateThreadTitle).toHaveBeenCalledWith(id, request.title);
    });
  });

  describe('updateThreadDescription', () => {
    it('should update a thread description', async () => {
      const id = 1;
      const request: UpdateThreadDescriptionDto = {
        description: 'Updated Thread Description',
      };

      const result = await controller.updateThreadDescription(id, request);

      expect(result).toEqual(mockThread);
      expect(service.updateThreadDescription).toHaveBeenCalledWith(
        id,
        request.description,
      );
    });
  });
});
