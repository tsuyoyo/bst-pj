import { IsNotEmpty, IsString, IsNumber } from 'class-validator';
import { PostThreadInSessionRequest } from '../../proto/bst/v1/thread_service';

export class PostThreadInSessionDto implements PostThreadInSessionRequest {
  @IsNotEmpty()
  @IsString()
  title: string;

  @IsNotEmpty()
  @IsString()
  description: string;

  @IsNotEmpty()
  @IsNumber()
  userId: number;

  @IsNotEmpty()
  @IsNumber()
  sessionId: number;
}
