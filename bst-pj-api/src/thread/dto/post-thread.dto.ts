import { IsNotEmpty, IsString, MaxLength, MinLength } from 'class-validator';
import { PostThreadRequest } from '../../proto/bst/v1/thread_service';

export class PostThreadDto implements PostThreadRequest {
  @IsNotEmpty()
  @IsString()
  @MinLength(5)
  @MaxLength(100)
  title: string;

  @IsNotEmpty()
  @IsString()
  @MaxLength(1000)
  description: string;

  @IsNotEmpty()
  userId: number;
}
