import { Test, TestingModule } from '@nestjs/testing';
import { SessionController } from './session.controller';
import { SessionService } from './session.service';
import { User } from '../entities/user.entity';
import { CreateSessionDto } from './dto/create-session.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { SessionStatus } from '../proto/bst/v1/session';

describe('SessionController', () => {
  let controller: SessionController;

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

  const mockSessionService = {
    createSession: jest.fn(),
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
      controllers: [SessionController],
      providers: [
        {
          provide: SessionService,
          useValue: mockSessionService,
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

    controller = module.get<SessionController>(SessionController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createSession', () => {
    it('should create a session', async () => {
      const createSessionDto: CreateSessionDto = {
        title: 'Test Session',
        description: 'Test Description',
        eventDate: new Date(),
      };

      const expectedResponse = {
        session: {
          id: 1,
          title: 'Test Session',
          timeline: {
            createdAt: new Date(),
            eventDate: createSessionDto.eventDate,
          },
          status: SessionStatus.SESSION_STATUS_BEFORE_ENTRY,
          participantsNum: 1,
        },
      };

      mockSessionService.createSession.mockResolvedValue(expectedResponse);

      const result = await controller.createSession(createSessionDto, mockUser);
      expect(result).toEqual(expectedResponse);
      expect(mockSessionService.createSession).toHaveBeenCalledWith(
        createSessionDto,
        mockUser,
      );
    });
  });
});
