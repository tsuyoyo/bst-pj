import {
  IsNotEmpty,
  IsString,
  IsNumber,
  MinLength,
  MaxLength,
} from 'class-validator';
import { UpdateThreadRequest } from '../../proto/bst/v1/thread_service';

export class UpdateThreadDto implements UpdateThreadRequest {
  @IsNotEmpty()
  @IsNumber()
  id: number;

  @IsNotEmpty()
  @IsString()
  @MinLength(5)
  @MaxLength(100)
  title: string;

  @IsNotEmpty()
  @IsString()
  @MaxLength(1000)
  description: string;
}
