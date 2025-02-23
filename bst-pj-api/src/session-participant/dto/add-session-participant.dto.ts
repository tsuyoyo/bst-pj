import { IsArray, IsBoolean, IsInt, IsNotEmpty } from 'class-validator';
import {
  AddSessionParticipantRequest,
  AddSessionParticipantRequest_SessionParticipantPart,
} from '../../proto/bst/v1/session_participant_service';

export class SessionParticipantPartDto
  implements AddSessionParticipantRequest_SessionParticipantPart
{
  @IsInt()
  @IsNotEmpty()
  sessionPartId: number;

  @IsBoolean()
  isPrimary: boolean;
}

export class AddSessionParticipantDto implements AddSessionParticipantRequest {
  @IsInt()
  @IsNotEmpty()
  userId: number;

  @IsArray()
  parts: SessionParticipantPartDto[];
}
