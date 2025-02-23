import { IsEnum } from 'class-validator';
import { UpdateSessionParticipantStatusRequest } from '../../proto/bst/v1/session_participant_service';
import { SessionParticipantStatus } from '../../proto/bst/v1/session';
export class UpdateSessionParticipantStatusDto
  implements UpdateSessionParticipantStatusRequest
{
  @IsEnum(SessionParticipantStatus)
  status: SessionParticipantStatus;
}
