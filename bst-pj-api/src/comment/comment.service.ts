import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Comment } from '../entities/comment.entity';
import {
  DeleteCommentResponse,
  GetCommentRequest,
  PostCommentRequest,
} from '../proto/bst/v1/comment_service';
import { CommentTargetType } from '../entities/comment.entity';
import { UpdateCommentDto } from './dto/update-comment.dto';

@Injectable()
export class CommentService {
  constructor(
    @InjectRepository(Comment)
    private readonly commentRepository: Repository<Comment>,
  ) {}

  async getComment(request: GetCommentRequest): Promise<Comment> {
    const comment = await this.commentRepository.findOne({
      where: { id: request.id },
      relations: ['user'],
    });
    if (!comment) {
      throw new NotFoundException('Comment not found');
    }
    return comment;
  }

  async postComment(request: PostCommentRequest): Promise<Comment> {
    const comment = this.commentRepository.create({
      content: request.content,
      targetType: CommentTargetType.Thread,
      targetId: request.threadId,
      userId: request.userId,
    });
    return await this.commentRepository.save(comment);
  }

  async deleteComment(id: number): Promise<DeleteCommentResponse> {
    const comment = await this.commentRepository.findOne({ where: { id } });
    if (!comment) {
      throw new NotFoundException('Comment not found');
    }
    await this.commentRepository.remove(comment);
    return { success: true };
  }

  async updateComment(
    id: number,
    updateCommentDto: UpdateCommentDto,
  ): Promise<Comment> {
    const comment = await this.commentRepository.findOne({ where: { id } });
    if (!comment) {
      throw new Error('Comment not found');
    }

    comment.content = updateCommentDto.content;

    return this.commentRepository.save(comment);
  }
}
