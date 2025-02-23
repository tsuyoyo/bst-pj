import { IsBoolean } from 'class-validator';
import { SetSessionParticipantIsAdminRequest } from '../../proto/bst/v1/session_participant_service';

export class SetSessionParticipantIsAdminDto
  implements SetSessionParticipantIsAdminRequest
{
  @IsBoolean()
  isAdmin: boolean;
}
