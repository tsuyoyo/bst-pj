import {
  IsNotEmpty,
  IsNumber,
  IsString,
  MaxLength,
  MinLength,
} from 'class-validator';
import { CreateStudioRoomRequest } from 'src/proto/bst/v1/studio_room_service';

export class CreateStudioRoomDto implements CreateStudioRoomRequest {
  @IsString()
  @IsNotEmpty()
  @MaxLength(30)
  @MinLength(1)
  name: string;

  @IsNumber()
  capacity: number;

  @IsNumber()
  price: number;

  @IsNumber()
  size: number;
}
