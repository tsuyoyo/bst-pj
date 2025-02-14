import { Test, TestingModule } from '@nestjs/testing';
import { FollowController } from './follow.controller';
import { FollowService } from './follow.service';
import { User } from '../entities/user.entity';
import { JwtService } from '@nestjs/jwt';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('FollowController', () => {
  let controller: FollowController;
  let service: FollowService;

  const mockUser = {
    id: 1,
    name: 'Test User',
    iconUrl: 'http://example.com/icon.jpg',
  } as User;

  const mockFollowService = {
    followUser: jest.fn(),
    unfollowUser: jest.fn(),
    listFollowers: jest.fn(),
    listFollowing: jest.fn(),
  };

  const mockJwtService = {
    sign: jest.fn(),
    verify: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FollowController],
      providers: [
        {
          provide: FollowService,
          useValue: mockFollowService,
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

    controller = module.get<FollowController>(FollowController);
    service = module.get<FollowService>(FollowService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('followUser', () => {
    it('should create follow relationship', async () => {
      const followUserDto = { followingId: 2 };
      const expectedResponse = { success: true };

      jest.spyOn(service, 'followUser').mockResolvedValue(expectedResponse);

      const result = await controller.followUser(followUserDto, mockUser);

      expect(result).toEqual(expectedResponse);
      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(service.followUser).toHaveBeenCalledWith(
        followUserDto,
        mockUser.id,
      );
    });
  });

  describe('unfollowUser', () => {
    it('should remove follow relationship', async () => {
      const followingId = 2;
      const expectedResponse = { success: true };

      jest.spyOn(service, 'unfollowUser').mockResolvedValue(expectedResponse);

      const result = await controller.unfollowUser(followingId, mockUser);

      expect(result).toEqual(expectedResponse);
      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(service.unfollowUser).toHaveBeenCalledWith(
        followingId,
        mockUser.id,
      );
    });
  });

  describe('listFollowers', () => {
    it('should return list of followers', async () => {
      const userId = 1;
      const expectedResponse = {
        followers: [
          {
            id: 2,
            name: 'Follower',
            icon: 'http://example.com/follower-icon.jpg',
          },
        ],
      };

      jest.spyOn(service, 'listFollowers').mockResolvedValue(expectedResponse);

      const result = await controller.listFollowers(userId);

      expect(result).toEqual(expectedResponse);
      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(service.listFollowers).toHaveBeenCalledWith(userId);
    });
  });

  describe('listFollowing', () => {
    it('should return list of following users', async () => {
      const userId = 1;
      const expectedResponse = {
        followings: [
          {
            id: 3,
            name: 'Following User',
            icon: 'http://example.com/following-icon.jpg',
          },
        ],
      };

      jest.spyOn(service, 'listFollowing').mockResolvedValue(expectedResponse);

      const result = await controller.listFollowing(userId);

      expect(result).toEqual(expectedResponse);
      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(service.listFollowing).toHaveBeenCalledWith(userId);
    });
  });
});
