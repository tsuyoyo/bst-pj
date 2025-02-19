import { PartyParticipantRole as ProtoPartyParticipantRole } from '../../proto/bst/v1/party';
import { PartyParticipantRole } from '../../entities/types/party-participant-role.enum';

export const mapPartyParticipantRole = {
  protoToEntity: (role: ProtoPartyParticipantRole) => {
    switch (role) {
      case ProtoPartyParticipantRole.PARTY_PARTICIPANT_ROLE_HOST:
        return PartyParticipantRole.HOST;
      case ProtoPartyParticipantRole.PARTY_PARTICIPANT_ROLE_PARTICIPANT:
      default:
        return PartyParticipantRole.PARTICIPANT;
    }
  },
  entityToProto: (role: PartyParticipantRole) => {
    switch (role) {
      case PartyParticipantRole.HOST:
        return ProtoPartyParticipantRole.PARTY_PARTICIPANT_ROLE_HOST;
      case PartyParticipantRole.PARTICIPANT:
      default:
        return ProtoPartyParticipantRole.PARTY_PARTICIPANT_ROLE_PARTICIPANT;
    }
  },
};
