import { AddPartyParticipantDto } from '../dto/add-participant.dto';
import { mapPartyParticipantRole } from './party-participant-role.mapper';
import { mapPartyParticipantStatus } from './party-participant-status.mapper';

export const addParticipantMapper = (dto: AddPartyParticipantDto) => {
  return {
    role: mapPartyParticipantRole.protoToEntity(dto.role),
    status: mapPartyParticipantStatus.protoToEntity(dto.status),
  };
};
