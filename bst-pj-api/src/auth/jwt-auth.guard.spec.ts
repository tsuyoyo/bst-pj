/* eslint-disable @typescript-eslint/unbound-method */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { ExecutionContext, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { JwtAuthGuard } from './jwt-auth.guard';
import { User } from '../entities/user.entity';

describe('JwtAuthGuard', () => {
  let guard: JwtAuthGuard;
  let jwtService: JwtService;
  let userRepository: Repository<User>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        JwtAuthGuard,
        {
          provide: JwtService,
          useValue: {
            verifyAsync: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn(),
          },
        },
      ],
    }).compile();

    guard = module.get<JwtAuthGuard>(JwtAuthGuard);
    jwtService = module.get<JwtService>(JwtService);
    userRepository = module.get<Repository<User>>(getRepositoryToken(User));
  });

  it('should be defined', () => {
    expect(guard).toBeDefined();
  });

  describe('canActivate', () => {
    let mockContext: ExecutionContext;
    let mockRequest: any;

    beforeEach(() => {
      mockRequest = {
        headers: {},
      };
      mockContext = {
        switchToHttp: () => ({
          // eslint-disable-next-line @typescript-eslint/no-unsafe-return
          getRequest: () => mockRequest,
        }),
      } as ExecutionContext;
    });

    it('should throw UnauthorizedException when no authorization header is present', async () => {
      await expect(guard.canActivate(mockContext)).rejects.toThrow(
        new UnauthorizedException('No authorization token provided'),
      );
    });

    it('should throw UnauthorizedException when authorization type is not Bearer', async () => {
      mockRequest.headers.authorization = 'Basic token123';
      await expect(guard.canActivate(mockContext)).rejects.toThrow(
        new UnauthorizedException('Invalid authorization type'),
      );
    });

    it('should throw UnauthorizedException when token is invalid', async () => {
      mockRequest.headers.authorization = 'Bearer invalid_token';
      (jwtService.verifyAsync as jest.Mock).mockRejectedValue(new Error());

      await expect(guard.canActivate(mockContext)).rejects.toThrow(
        new UnauthorizedException('Invalid token'),
      );
    });

    it('should throw UnauthorizedException when user is not found', async () => {
      const mockPayload = { sub: 1, email: 'test@example.com' };
      mockRequest.headers.authorization = 'Bearer valid_token';
      (jwtService.verifyAsync as jest.Mock).mockResolvedValue(mockPayload);
      (userRepository.findOne as jest.Mock).mockResolvedValue(null);

      await expect(guard.canActivate(mockContext)).rejects.toThrow(
        new UnauthorizedException('User not found'),
      );
    });

    it('should return true and set user in request when token is valid and user exists', async () => {
      const mockUser = { id: 1, email: 'test@example.com' };
      const mockPayload = { sub: 1, email: 'test@example.com' };
      mockRequest.headers.authorization = 'Bearer valid_token';
      (jwtService.verifyAsync as jest.Mock).mockResolvedValue(mockPayload);
      (userRepository.findOne as jest.Mock).mockResolvedValue(mockUser);

      const result = await guard.canActivate(mockContext);

      expect(result).toBe(true);
      expect(mockRequest.user).toEqual(mockUser);
      expect(userRepository.findOne).toHaveBeenCalledWith({
        where: { id: mockPayload.sub },
      });
    });
  });
});
