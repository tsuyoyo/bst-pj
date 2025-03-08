import { IsNotEmpty, IsNumber, IsString } from 'class-validator';
import { UpdateStudioRoomInfoRequest } from 'src/proto/bst/v1/studio_room_service';

export class UpdateStudioRoomInfoDto implements UpdateStudioRoomInfoRequest {
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
