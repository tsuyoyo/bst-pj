import { PartyParticipantStatus } from '../../entities/types/party-participant-status.enum';
import { PartyParticipantStatus as ProtoPartyParticipantStatus } from '../../proto/bst/v1/party';

export const mapPartyParticipantStatus = {
  entityToProto: (status: PartyParticipantStatus) => {
    switch (status) {
      case PartyParticipantStatus.PENDING:
        return ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_PENDING;
      case PartyParticipantStatus.CONFIRMED:
        return ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_CONFIRMED;
      case PartyParticipantStatus.CANCELLED:
      default:
        return ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_CANCELLED;
    }
  },
  protoToEntity: (status: ProtoPartyParticipantStatus) => {
    switch (status) {
      case ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_PENDING:
        return PartyParticipantStatus.PENDING;
      case ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_CONFIRMED:
        return PartyParticipantStatus.CONFIRMED;
      case ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_CANCELLED:
      default:
        return PartyParticipantStatus.CANCELLED;
    }
  },
};
