import { IsEnum } from 'class-validator';
import { UpdateSessionStatusRequest } from '../../proto/bst/v1/session_service';
import { SessionStatus } from '../../proto/bst/v1/session';

export class UpdateSessionStatusDto implements UpdateSessionStatusRequest {
  @IsEnum(SessionStatus)
  status: SessionStatus;
}
