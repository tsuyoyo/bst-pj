import { IsNotEmpty, IsNumber, IsString } from 'class-validator';
import { UpdateStudioRoomRequest } from 'src/proto/bst/v1/studio_room_service';

export class UpdateStudioRoomDto implements UpdateStudioRoomRequest {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsNumber()
  capacity: number;

  @IsNumber()
  price: number;

  @IsNumber()
  size: number;
}
