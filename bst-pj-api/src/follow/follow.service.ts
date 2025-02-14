import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Follow } from '../entities/follow.entity';
import { User } from '../entities/user.entity';
import {
  FollowUserRequest,
  FollowUserResponse,
  ListFollowersResponse,
  ListFollowingResponse,
} from '../proto/bst/v1/follow_service';
import { User as ProtoUser } from '../proto/bst/v1/user';

@Injectable()
export class FollowService {
  constructor(
    @InjectRepository(Follow)
    private readonly followRepository: Repository<Follow>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  private mapUserToProto(user: User): ProtoUser {
    return {
      id: user.id,
      name: user.name,
      icon: user.iconUrl || '',
    };
  }

  async followUser(
    request: FollowUserRequest,
    userId: number,
  ): Promise<FollowUserResponse> {
    // Check if the user exists
    const followingUser = await this.userRepository.findOne({
      where: { id: request.followingId },
    });
    if (!followingUser) {
      throw new NotFoundException('User to follow not found');
    }

    // Check if already following
    const existingFollow = await this.followRepository.findOne({
      where: {
        followerId: userId,
        followingId: request.followingId,
      },
    });

    if (existingFollow) {
      throw new Error('Already following this user');
    }

    // Create new follow relationship
    const follow = this.followRepository.create({
      followerId: userId,
      followingId: request.followingId,
    });
    await this.followRepository.save(follow);

    return { success: true };
  }

  async unfollowUser(
    followingId: number,
    userId: number,
  ): Promise<FollowUserResponse> {
    const existingFollow = await this.followRepository.findOne({
      where: {
        followerId: userId,
        followingId: followingId,
      },
    });

    if (!existingFollow) {
      throw new NotFoundException('Follow relationship not found');
    }

    await this.followRepository.remove(existingFollow);
    return { success: true };
  }

  async listFollowers(userId: number): Promise<ListFollowersResponse> {
    const follows = await this.followRepository.find({
      where: { followingId: userId },
      relations: ['follower'],
    });

    return {
      followers: follows.map((follow) => this.mapUserToProto(follow.follower)),
    };
  }

  async listFollowing(userId: number): Promise<ListFollowingResponse> {
    const follows = await this.followRepository.find({
      where: { followerId: userId },
      relations: ['following'],
    });

    return {
      followings: follows.map((follow) =>
        this.mapUserToProto(follow.following),
      ),
    };
  }
}
