import { IsDate, IsNotEmpty, IsString } from 'class-validator';
import { Type } from 'class-transformer';
import { CreateSessionRequest } from '../../proto/bst/v1/session_service';

export class CreateSessionDto implements CreateSessionRequest {
  @IsString()
  @IsNotEmpty()
  title: string;

  @IsString()
  @IsNotEmpty()
  description: string;

  @IsDate()
  @Type(() => Date)
  eventDate: Date;
}
