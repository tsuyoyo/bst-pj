import { IsNotEmpty, IsString, IsNumber, MaxLength } from 'class-validator';
import { PostCommentRequest } from '../../proto/bst/v1/comment_service';

export class PostCommentDto implements PostCommentRequest {
  @IsNotEmpty()
  @IsString()
  @MaxLength(1000)
  content: string;

  @IsNotEmpty()
  @IsNumber()
  threadId: number;

  @IsNotEmpty()
  @IsNumber()
  userId: number;
}
