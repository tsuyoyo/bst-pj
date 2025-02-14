import {
  Controller,
  Post,
  Delete,
  Get,
  Body,
  UseGuards,
  Param,
  ParseIntPipe,
} from '@nestjs/common';
import { FollowService } from './follow.service';
import { FollowUserDto } from './dto/follow-user.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  FollowUserResponse,
  ListFollowersResponse,
  ListFollowingResponse,
} from '../proto/bst/v1/follow_service';

@Controller('follows')
export class FollowController {
  constructor(private readonly followService: FollowService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async followUser(
    @Body() followUserDto: FollowUserDto,
    @CurrentUser() user: User,
  ): Promise<FollowUserResponse> {
    return await this.followService.followUser(followUserDto, user.id);
  }

  @Delete(':followingId')
  @UseGuards(JwtAuthGuard)
  async unfollowUser(
    @Param('followingId', ParseIntPipe) followingId: number,
    @CurrentUser() user: User,
  ): Promise<FollowUserResponse> {
    return await this.followService.unfollowUser(followingId, user.id);
  }

  @Get(':userId/followers')
  async listFollowers(
    @Param('userId', ParseIntPipe) userId: number,
  ): Promise<ListFollowersResponse> {
    return await this.followService.listFollowers(userId);
  }

  @Get(':userId/following')
  async listFollowing(
    @Param('userId', ParseIntPipe) userId: number,
  ): Promise<ListFollowingResponse> {
    return await this.followService.listFollowing(userId);
  }
}
