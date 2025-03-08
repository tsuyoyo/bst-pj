import { IsNotEmpty, IsNumber, IsString } from 'class-validator';
import { CreateStudioRoomInfoRequest } from 'src/proto/bst/v1/studio_room_service';

export class CreateStudioRoomInfoDto implements CreateStudioRoomInfoRequest {
  @IsNumber()
  @IsNotEmpty()
  typeId: number;

  @IsString()
  @IsNotEmpty()
  key: string;

  @IsString()
  @IsNotEmpty()
  value: string;
}
