import {
  Controller,
  Post,
  Get,
  Delete,
  Body,
  Param,
  ParseIntPipe,
  UseGuards,
  Put,
} from '@nestjs/common';
import { CommentService } from './comment.service';
import { PostCommentDto } from './dto/post-comment.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { DeleteCommentResponse } from '../proto/bst/v1/comment_service';
import { UpdateCommentDto } from './dto/update-comment.dto';

@Controller('comments')
export class CommentController {
  constructor(private readonly commentService: CommentService) {}

  @Get(':id')
  async getComment(@Param('id', ParseIntPipe) id: number) {
    const comment = await this.commentService.getComment({ id });
    return { comment };
  }

  @Post()
  @UseGuards(JwtAuthGuard)
  async postComment(
    @Body() postCommentDto: PostCommentDto,
    @CurrentUser() user: User,
  ) {
    const comment = await this.commentService.postComment({
      ...postCommentDto,
      userId: user.id,
    });
    return { comment };
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteComment(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeleteCommentResponse> {
    return await this.commentService.deleteComment(id);
  }

  @Put(':id')
  async updateComment(
    @Param('id') id: number,
    @Body() updateCommentDto: UpdateCommentDto,
  ) {
    const comment = await this.commentService.updateComment(
      id,
      updateCommentDto,
    );
    return { comment };
  }
}
