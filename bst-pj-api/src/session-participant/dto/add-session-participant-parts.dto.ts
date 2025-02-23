import { IsInt } from 'class-validator';
import { AddSessionParticipantPartsRequest } from '../../proto/bst/v1/session_participant_service';

export class AddSessionParticipantPartsDto
  implements AddSessionParticipantPartsRequest
{
  @IsInt()
  sessionPartId: number;
}
