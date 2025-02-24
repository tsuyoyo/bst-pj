import { IsInt } from 'class-validator';
import { UpdateSessionStudioRequest } from '../../proto/bst/v1/session_service';

export class UpdateSessionStudioDto implements UpdateSessionStudioRequest {
  @IsInt()
  studioId: number;

  @IsInt()
  studioRoomId: number;
}
