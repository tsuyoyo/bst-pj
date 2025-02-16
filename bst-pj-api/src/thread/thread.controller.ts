import {
  Body,
  Controller,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Query,
  UseGuards,
  Put,
} from '@nestjs/common';
import { ThreadService } from './thread.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { PostThreadDto } from './dto/post-thread.dto';
import { PostThreadInSessionDto } from './dto/post-thread-in-session.dto';
import { Thread } from '../proto/bst/v1/communication';
import {
  GetThreadCommentsResponse,
  GetThreadsInSessionResponse,
} from '../proto/bst/v1/thread_service';
import { UpdateThreadDto } from './dto/update-thread.dto';
import { UpdateThreadTitleDto } from './dto/update-thread-title.dto';
import { UpdateThreadDescriptionDto } from './dto/update-thread-description.dto';

@Controller('thread')
@UseGuards(JwtAuthGuard)
export class ThreadController {
  constructor(private readonly threadService: ThreadService) {}

  @Post()
  async createThread(
    @Body() request: PostThreadDto,
    @CurrentUser() user: User,
  ): Promise<Thread> {
    request.userId = user.id;
    return await this.threadService.createThread(request);
  }

  @Post('session')
  async createThreadInSession(
    @Body() request: PostThreadInSessionDto,
    @CurrentUser() user: User,
  ): Promise<Thread> {
    request.userId = user.id;
    return this.threadService.createThreadInSession(request);
  }

  @Get(':id')
  async getThread(@Param('id', ParseIntPipe) id: number): Promise<Thread> {
    return await this.threadService.getThread({ id });
  }

  @Get('session/:sessionId')
  async getThreadsInSession(
    @Param('sessionId', ParseIntPipe) sessionId: number,
  ): Promise<GetThreadsInSessionResponse> {
    return await this.threadService.getThreadsInSession({ sessionId });
  }

  @Get(':id/comments')
  async getThreadComments(
    @Param('id', ParseIntPipe) threadId: number,
    @Query('page', ParseIntPipe) page: number = 1,
    @Query('limit', ParseIntPipe) limit: number = 20,
  ): Promise<GetThreadCommentsResponse> {
    return await this.threadService.getThreadComments({
      threadId,
      page,
      limit,
    });
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateThread(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateThreadDto,
  ): Promise<Thread> {
    request.id = id;
    return await this.threadService.updateThread(request);
  }

  @Put(':id/title')
  @UseGuards(JwtAuthGuard)
  async updateThreadTitle(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateThreadTitleDto,
  ): Promise<Thread> {
    return await this.threadService.updateThreadTitle(id, request.title);
  }

  @Put(':id/description')
  @UseGuards(JwtAuthGuard)
  async updateThreadDescription(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateThreadDescriptionDto,
  ): Promise<Thread> {
    return await this.threadService.updateThreadDescription(
      id,
      request.description,
    );
  }
}
