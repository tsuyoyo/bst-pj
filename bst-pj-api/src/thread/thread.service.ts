import {
  ForbiddenException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Thread } from '../entities/thread.entity';
import {
  PostThreadRequest,
  PostThreadInSessionRequest,
  GetThreadRequest,
  GetThreadsInSessionRequest,
  GetThreadCommentsRequest,
  GetThreadCommentsResponse,
  GetThreadsInSessionResponse,
  UpdateThreadRequest,
  DeleteThreadResponse,
} from '../proto/bst/v1/thread_service';
import { Thread as ThreadProto } from '../proto/bst/v1/communication';
import { ThreadContextType } from '../entities/thread.entity';
import { UserService } from '../user/user.service';
import { Comment } from '../entities/comment.entity';
import { CommentTargetType } from '../entities/comment.entity';

@Injectable()
export class ThreadService {
  constructor(
    @InjectRepository(Thread)
    private readonly threadRepository: Repository<Thread>,
    @InjectRepository(Comment)
    private readonly commentRepository: Repository<Comment>,
    private readonly userService: UserService,
  ) {}

  async createThread(request: PostThreadRequest): Promise<ThreadProto> {
    const thread = await this.threadRepository.save({
      title: request.title,
      description: request.description,
      createdBy: request.userId,
      contextType: ThreadContextType.Global,
    });

    return this.convertToProto(thread);
  }

  async createThreadInSession(
    request: PostThreadInSessionRequest,
  ): Promise<ThreadProto> {
    const thread = await this.threadRepository.save({
      title: request.title,
      description: request.description,
      createdBy: request.userId,
      contextType: ThreadContextType.Session,
      contextId: request.sessionId,
    });

    return this.convertToProto(thread);
  }

  async getThread(request: GetThreadRequest): Promise<ThreadProto> {
    const thread = await this.threadRepository.findOne({
      where: { id: request.id },
    });

    if (!thread) {
      throw new NotFoundException('Thread not found');
    }

    return this.convertToProto(thread);
  }

  async getThreadsInSession(
    request: GetThreadsInSessionRequest,
  ): Promise<GetThreadsInSessionResponse> {
    const threads = await this.threadRepository.find({
      where: {
        contextType: ThreadContextType.Session,
        contextId: request.sessionId,
      },
      order: {
        createdAt: 'DESC',
      },
    });

    return {
      threads: threads.map((thread) => this.convertToProto(thread)),
    };
  }

  async getThreadComments(
    request: GetThreadCommentsRequest,
  ): Promise<GetThreadCommentsResponse> {
    const [comments, total] = await this.commentRepository.findAndCount({
      where: {
        targetType: CommentTargetType.Thread,
        targetId: request.threadId,
      },
      order: {
        createdAt: 'DESC',
      },
      skip: (request.page - 1) * request.limit,
      take: request.limit,
      relations: ['user'],
    });

    const nextPage =
      total > request.page * request.limit ? request.page + 1 : 0;

    return {
      comments: await Promise.all(
        comments.map((comment) => ({
          id: comment.id,
          content: comment.content,
          user: this.userService.mapUserToProto(comment.user),
          createdAt: comment.createdAt,
          updatedAt: comment.updatedAt,
          mentions: [],
          userId: comment.user.id,
          threadId: comment.targetId,
        })),
      ),
      nextPage,
    };
  }

  async updateThread(request: UpdateThreadRequest): Promise<ThreadProto> {
    const thread = await this.threadRepository.findOne({
      where: { id: request.id },
    });

    if (!thread) {
      throw new NotFoundException('Thread not found');
    }

    thread.title = request.title;
    thread.description = request.description;

    const updatedThread = await this.threadRepository.save(thread);
    return this.convertToProto(updatedThread);
  }

  async updateThreadTitle(id: number, title: string): Promise<ThreadProto> {
    const thread = await this.threadRepository.findOne({
      where: { id },
    });

    if (!thread) {
      throw new NotFoundException('Thread not found');
    }

    thread.title = title;

    const updatedThread = await this.threadRepository.save(thread);
    return this.convertToProto(updatedThread);
  }

  async updateThreadDescription(
    id: number,
    description: string,
  ): Promise<ThreadProto> {
    const thread = await this.threadRepository.findOne({
      where: { id },
    });

    if (!thread) {
      throw new NotFoundException('Thread not found');
    }

    thread.description = description;

    const updatedThread = await this.threadRepository.save(thread);
    return this.convertToProto(updatedThread);
  }

  private convertToProto(thread: Thread): ThreadProto {
    return {
      id: thread.id,
      title: thread.title,
      description: thread.description || '',
      createdBy: this.userService.mapUserToProto(thread.creator),
      createdAt: thread.createdAt,
      updatedAt: thread.updatedAt,
    };
  }

  async deleteThread(
    id: number,
    userId: number,
  ): Promise<DeleteThreadResponse> {
    const thread = await this.threadRepository.findOne({
      where: { id },
    });
    if (!thread) {
      throw new NotFoundException('Thread not found');
    }

    if (thread.createdBy !== userId) {
      throw new ForbiddenException('You are not allowed to delete this thread');
    }

    const result = await this.threadRepository.delete(id);

    return {
      success: result.affected ? result.affected > 0 : false,
    };
  }
}
