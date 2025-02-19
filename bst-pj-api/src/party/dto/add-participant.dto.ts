import { IsEnum } from 'class-validator';
import { AddPartyParticipantRequest } from '../../proto/bst/v1/party_service';
import {
  PartyParticipantRole,
  PartyParticipantStatus,
} from '../../proto/bst/v1/party';

export class AddPartyParticipantDto implements AddPartyParticipantRequest {
  @IsEnum(PartyParticipantRole)
  role: PartyParticipantRole;

  @IsEnum(PartyParticipantStatus)
  status: PartyParticipantStatus;
}
