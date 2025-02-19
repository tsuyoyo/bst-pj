import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Party } from '../entities/party.entity';
import { Party as PartyProto } from '../proto/bst/v1/party';
import { PartyParticipant as ProtoPartyParticipant } from '../proto/bst/v1/party';
import { CreatePartyDto } from './dto/create-party.dto';
import { UpdatePartyDto } from './dto/update-party.dto';
import {
  CreatePartyResponse,
  GetPartyResponse,
  UpdatePartyResponse,
  DeletePartyResponse,
  AddPartyParticipantResponse,
  RemovePartyParticipantResponse,
} from '../proto/bst/v1/party_service';
import { LocationService } from '../location/location.service';
import { LocationMapper } from '../location/mapper/location.mapper';
import { User } from '../entities/user.entity';
import { User as ProtoUser } from '../proto/bst/v1/user';
import { PartyParticipant } from '../entities/party-participant.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { UserService } from '../user/user.service';
import { PartyParticipantRole } from '../entities/types/party-participant-role.enum';
import { PartyParticipantStatus } from '../entities/types/party-participant-status.enum';
import { mapPartyParticipantRole } from './mapper/party-participant-role.mapper';
import { mapPartyParticipantStatus } from './mapper/party-participant-status.mapper';
@Injectable()
export class PartyService {
  constructor(
    @InjectRepository(Party)
    private readonly partyRepository: Repository<Party>,

    @InjectRepository(PartyParticipant)
    private readonly partyParticipantRepository: Repository<PartyParticipant>,

    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,

    private readonly locationService: LocationService,
    private readonly userService: UserService,
  ) {}

  async createParty(
    sessionId: number,
    createPartyDto: CreatePartyDto,
    user: User,
  ): Promise<CreatePartyResponse> {
    await this.verifySessionParticipant(user, sessionId);

    const party = this.partyRepository.create({
      sessionId,
      ...createPartyDto,
    });

    const savedParty = await this.partyRepository.save(party);

    // Make the creator of the party the host
    await this.addParticipant(
      sessionId,
      PartyParticipantRole.HOST,
      PartyParticipantStatus.CONFIRMED,
      user,
    );
    console.log(savedParty);
    const partyProto = await this.mapPartyToProto(sessionId, savedParty);
    return {
      party: partyProto,
    };
  }

  async getParty(sessionId: number): Promise<GetPartyResponse> {
    const party = await this.partyRepository.findOne({
      where: { sessionId },
    });

    if (!party) {
      return { party: undefined };
    }

    const partyProto = await this.mapPartyToProto(sessionId, party);
    return {
      party: partyProto,
    };
  }

  async updateParty(
    sessionId: number,
    updatePartyDto: UpdatePartyDto,
    user: User,
  ): Promise<UpdatePartyResponse> {
    await this.verifySessionParticipant(user, sessionId);

    await this.partyRepository.update({ sessionId }, updatePartyDto);

    const updatedParty = await this.partyRepository.findOne({
      where: { sessionId },
    });

    if (!updatedParty) {
      throw new NotFoundException(
        `Party with session ID ${sessionId} not found`,
      );
    }

    const partyProto = await this.mapPartyToProto(sessionId, updatedParty);
    return {
      party: partyProto,
    };
  }

  async deleteParty(
    sessionId: number,
    user: User,
  ): Promise<DeletePartyResponse> {
    await this.verifySessionParticipant(user, sessionId);

    const party = await this.partyRepository.findOne({
      where: { sessionId },
    });
    if (!party) {
      return { success: false };
    }

    const resultParty = await this.partyRepository.delete({ sessionId });
    const resultPartyParticipant = await this.partyParticipantRepository.delete(
      {
        partyId: party.id,
      },
    );
    return {
      success:
        (resultParty.affected ? resultParty.affected > 0 : false) &&
        (resultPartyParticipant.affected
          ? resultPartyParticipant.affected > 0
          : false),
    };
  }

  async addParticipant(
    sessionId: number,
    role: PartyParticipantRole,
    status: PartyParticipantStatus,
    user: User,
  ): Promise<AddPartyParticipantResponse> {
    const sessionParticipant = await this.getSessionParticipant(
      user,
      sessionId,
    );
    const party = await this.partyRepository.findOne({
      where: { sessionId },
    });
    if (!party) {
      throw new NotFoundException(
        `Party with session ID ${sessionId} not found`,
      );
    }

    const partyParticipant = this.partyParticipantRepository.create({
      partyId: party.id,
      sessionParticipantId: sessionParticipant.id,
      role,
      status,
    });

    const savedData =
      await this.partyParticipantRepository.save(partyParticipant);

    return { success: savedData ? true : false };
  }

  async removeParticipant(
    sessionId: number,
    user: User,
  ): Promise<RemovePartyParticipantResponse> {
    const sessionParticipant = await this.getSessionParticipant(
      user,
      sessionId,
    );

    const party = await this.partyRepository.findOne({
      where: { sessionId },
    });
    if (!party) {
      return { success: false };
    }

    const partyParticipant = await this.partyParticipantRepository.findOne({
      where: {
        partyId: party.id,
        sessionParticipantId: sessionParticipant.user.id,
      },
    });
    if (!partyParticipant) {
      return { success: false };
    }

    const result = await this.partyParticipantRepository.delete(
      partyParticipant.id,
    );
    return { success: result.affected ? result.affected > 0 : false };
  }

  private async getSessionParticipant(
    user: User,
    sessionId: number,
  ): Promise<SessionParticipant> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { userId: user.id, sessionId },
    });
    if (!sessionParticipant) {
      throw new NotFoundException(
        `User ${user.name} is not a participant of session ${sessionId}`,
      );
    }
    return sessionParticipant;
  }

  private async verifySessionParticipant(
    user: User,
    sessionId: number,
  ): Promise<void> {
    const sessionParticipant = await this.getSessionParticipant(
      user,
      sessionId,
    );
    if (!sessionParticipant) {
      throw new NotFoundException(
        `User ${user.name} is not a participant of session ${sessionId}`,
      );
    }
  }

  private async getUserBySessionParticipantId(
    sessionId: number,
    sessionParticipantId: number,
  ): Promise<ProtoUser> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { id: sessionParticipantId, sessionId },
    });
    if (!sessionParticipant) {
      throw new NotFoundException(
        `Session participant with ID ${sessionParticipantId} (in session ${sessionId}) not found`,
      );
    }
    const user = await this.userService.getUser(sessionParticipant.user.id);
    if (!user) {
      throw new NotFoundException(
        `User with ID ${sessionParticipant.userId} not found`,
      );
    }
    return user;
  }

  private async mapPartyParticipantToProto(
    sessionId: number,
    partyParticipant: PartyParticipant,
  ): Promise<ProtoPartyParticipant> {
    const user = await this.getUserBySessionParticipantId(
      sessionId,
      partyParticipant.sessionParticipantId,
    );
    return {
      user,
      role: mapPartyParticipantRole.entityToProto(partyParticipant.role),
      status: mapPartyParticipantStatus.entityToProto(partyParticipant.status),
    };
  }

  private async mapPartyToProto(
    sessionId: number,
    party: Party,
  ): Promise<PartyProto> {
    const location = await this.locationService.getLocation(party.locationId);
    const participants = await this.partyParticipantRepository.find({
      where: { partyId: party.id },
    });
    const protoParticipants = await Promise.all(
      participants.map((participant) =>
        this.mapPartyParticipantToProto(sessionId, participant),
      ),
    );
    return {
      location: LocationMapper.toProto(location),
      fee: party.fee,
      startAt: party.startAt,
      endAt: party.endAt,
      participants: protoParticipants,
    };
  }
}
