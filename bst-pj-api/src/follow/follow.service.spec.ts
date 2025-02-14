import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { FollowService } from './follow.service';
import { Follow } from '../entities/follow.entity';
import { User } from '../entities/user.entity';
import { NotFoundException } from '@nestjs/common';

describe('FollowService', () => {
  let service: FollowService;
  let followRepository: Repository<Follow>;
  let userRepository: Repository<User>;

  const mockUser1 = {
    id: 1,
    name: 'User 1',
    iconUrl: 'http://example.com/icon1.jpg',
  } as User;

  const mockUser2 = {
    id: 2,
    name: 'User 2',
    iconUrl: 'http://example.com/icon2.jpg',
  } as User;

  const mockFollow = {
    id: 1,
    followerId: mockUser1.id,
    followingId: mockUser2.id,
    follower: mockUser1,
    following: mockUser2,
  } as Follow;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        FollowService,
        {
          provide: getRepositoryToken(Follow),
          useValue: {
            findOne: jest.fn(),
            find: jest.fn(),
            create: jest.fn(),
            save: jest.fn(),
            remove: jest.fn(),
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

    service = module.get<FollowService>(FollowService);
    followRepository = module.get<Repository<Follow>>(
      getRepositoryToken(Follow),
    );
    userRepository = module.get<Repository<User>>(getRepositoryToken(User));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('followUser', () => {
    it('should create a new follow relationship', async () => {
      const request = { followingId: mockUser2.id };
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser2);
      jest.spyOn(followRepository, 'findOne').mockResolvedValue(null);
      jest.spyOn(followRepository, 'create').mockReturnValue(mockFollow);
      jest.spyOn(followRepository, 'save').mockResolvedValue(mockFollow);

      const result = await service.followUser(request, mockUser1.id);

      expect(result.success).toBe(true);

      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(followRepository.create).toHaveBeenCalledWith({
        followerId: mockUser1.id,
        followingId: mockUser2.id,
      });
    });

    it('should throw error when user to follow does not exist', async () => {
      const request = { followingId: 999 };
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(null);

      await expect(service.followUser(request, mockUser1.id)).rejects.toThrow(
        NotFoundException,
      );
    });

    it('should throw error when already following', async () => {
      const request = { followingId: mockUser2.id };
      jest.spyOn(userRepository, 'findOne').mockResolvedValue(mockUser2);
      jest.spyOn(followRepository, 'findOne').mockResolvedValue(mockFollow);

      await expect(service.followUser(request, mockUser1.id)).rejects.toThrow(
        'Already following this user',
      );
    });
  });

  describe('unfollowUser', () => {
    it('should remove follow relationship', async () => {
      jest.spyOn(followRepository, 'findOne').mockResolvedValue(mockFollow);
      jest.spyOn(followRepository, 'remove').mockResolvedValue(mockFollow);

      const result = await service.unfollowUser(mockUser2.id, mockUser1.id);

      expect(result.success).toBe(true);

      // eslint-disable-next-line @typescript-eslint/unbound-method
      expect(followRepository.remove).toHaveBeenCalledWith(mockFollow);
    });

    it('should throw error when follow relationship does not exist', async () => {
      jest.spyOn(followRepository, 'findOne').mockResolvedValue(null);

      await expect(
        service.unfollowUser(mockUser2.id, mockUser1.id),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('listFollowers', () => {
    it('should return list of followers', async () => {
      const mockFollows = [
        { ...mockFollow, follower: mockUser1 },
        { ...mockFollow, follower: mockUser2 },
      ];
      jest.spyOn(followRepository, 'find').mockResolvedValue(mockFollows);

      const result = await service.listFollowers(mockUser2.id);

      expect(result.followers).toHaveLength(2);
      expect(result.followers[0].id).toBe(mockUser1.id);
      expect(result.followers[1].id).toBe(mockUser2.id);
    });
  });

  describe('listFollowing', () => {
    it('should return list of following users', async () => {
      const mockFollows = [
        { ...mockFollow, following: mockUser1 },
        { ...mockFollow, following: mockUser2 },
      ];
      jest.spyOn(followRepository, 'find').mockResolvedValue(mockFollows);

      const result = await service.listFollowing(mockUser1.id);

      expect(result.followings).toHaveLength(2);
      expect(result.followings[0].id).toBe(mockUser1.id);
      expect(result.followings[1].id).toBe(mockUser2.id);
    });
  });
});
