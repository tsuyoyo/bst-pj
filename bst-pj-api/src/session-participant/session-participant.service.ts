import {
  BadRequestException,
  ForbiddenException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, EntityManager } from 'typeorm';
import {
  SessionParticipant,
  SessionParticipantStatus,
} from '../entities/session-participant.entity';
import { User } from '../entities/user.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { AddSessionParticipantDto } from './dto/add-session-participant.dto';
import {
  AddSessionParticipantResponse,
  DeleteSessionParticipantResponse,
  ListSessionParticipantsResponse,
  AddSessionParticipantPartsResponse,
  UpdateSessionParticipantStatusResponse,
  SetSessionParticipantIsAdminResponse,
} from '../proto/bst/v1/session_participant_service';
import { SessionParticipantPart } from '../entities/session-participant-part.entity';
import { UserService } from '../user/user.service';
import { SessionParticipantPartService } from '../session-participant/session-participant-part.service';
import {
  SessionParticipantStatus as ProtoSessionParticipantStatus,
  SessionParticipant as ProtoSessionParticipant,
} from '../proto/bst/v1/session';
import { SetSessionParticipantIsAdminDto } from './dto/set-session-participant-is-admin.dto';
import { AddSessionParticipantPartsDto } from './dto/add-session-participant-parts.dto';
import { UpdateSessionParticipantStatusDto } from './dto/update-session-participant-status.dto';

@Injectable()
export class SessionParticipantService {
  constructor(
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
    private readonly userService: UserService,
    private readonly sessionParticipantPartService: SessionParticipantPartService,
  ) {}

  async addSessionParticipant(
    sessionId: number,
    dto: AddSessionParticipantDto,
    user: User,
  ): Promise<AddSessionParticipantResponse> {
    return await this.sessionParticipantRepository.manager.transaction(
      async (entityManager: EntityManager) => {
        await this.sessionVerifyAccessService.verifySessionAccess(
          sessionId,
          user,
        );

        // Check if the user is already a participant
        const existingParticipant = await entityManager.findOne(
          SessionParticipant,
          {
            where: { sessionId, userId: dto.userId },
          },
        );
        if (existingParticipant) {
          throw new BadRequestException(
            `User ${user.name} is already a participant`,
          );
        }

        // Create the participant
        const participant = entityManager.create(SessionParticipant, {
          sessionId,
          userId: dto.userId,
          isPlayer: dto.parts.length > 0,
          isAdmin: false,
          status: SessionParticipantStatus.Confirmed,
        });
        const savedParticipant = await entityManager.save(participant);

        // Create the participant parts
        await Promise.all(
          dto.parts.map((part) =>
            entityManager.save(SessionParticipantPart, {
              sessionParticipantId: savedParticipant.id,
              sessionPartId: part.sessionPartId,
              isPrimary: part.isPrimary,
            }),
          ),
        );
        const { parts: protoParts, primaryPartId } =
          await this.sessionParticipantPartService.findBySessionParticipantId(
            participant.id,
          );

        return {
          sessionParticipant: {
            id: savedParticipant.id,
            user: await this.userService.getUser(savedParticipant.userId),
            isAdmin: savedParticipant.isAdmin,
            parts: protoParts,
            primaryPartId: primaryPartId,
            status: this.mapStatusToProto(savedParticipant.status),
            isPlayer: savedParticipant.isPlayer,
          },
        };
      },
    );
  }

  async getSessionParticipant(
    sessionId: number,
    participantId: number,
  ): Promise<ProtoSessionParticipant> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { id: participantId, sessionId },
    });
    if (!sessionParticipant) {
      throw new NotFoundException(
        `Participant ${participantId} not found in session ${sessionId}`,
      );
    }
    return this.mapParticipantToProto(sessionParticipant);
  }

  async listSessionParticipants(
    sessionId: number,
  ): Promise<ListSessionParticipantsResponse> {
    const participants = await this.sessionParticipantRepository.find({
      where: { sessionId },
      relations: ['parts'],
    });
    const protoParticipants = await Promise.all(
      participants.map(async (p) => this.mapParticipantToProto(p)),
    );
    return {
      participants: protoParticipants,
    };
  }

  async deleteSessionParticipant(
    sessionId: number,
    participantId: number,
    user: User,
  ): Promise<DeleteSessionParticipantResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const participant = await this.sessionParticipantRepository.findOne({
      where: { id: participantId, sessionId },
    });

    if (!participant) {
      throw new NotFoundException(
        `Participant ${participantId} not found in session ${sessionId}`,
      );
    }
    if (user.id !== participant.userId) {
      throw new ForbiddenException(
        `User ${user.name} is not allowed to delete participant ${participantId}`,
      );
    }

    await this.sessionParticipantRepository.remove(participant);

    return { success: true };
  }

  async setSessionParticipantIsAdmin(
    sessionId: number,
    participantId: number,
    dto: SetSessionParticipantIsAdminDto,
    user: User,
  ): Promise<SetSessionParticipantIsAdminResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const participant = await this.sessionParticipantRepository.findOne({
      where: { id: participantId, sessionId },
    });
    if (!participant) {
      throw new NotFoundException(
        `Participant ${participantId} not found in session ${sessionId}`,
      );
    }
    if (participant.userId !== user.id) {
      throw new ForbiddenException(
        `User ${user.name} is not allowed to change admin status of participant ${participantId}`,
      );
    }

    participant.isAdmin = dto.isAdmin;
    const savedParticipant =
      await this.sessionParticipantRepository.save(participant);

    return {
      sessionParticipant: await this.mapParticipantToProto(savedParticipant),
    };
  }

  async addSessionParticipantParts(
    sessionId: number,
    participantId: number,
    dto: AddSessionParticipantPartsDto,
    user: User,
  ): Promise<AddSessionParticipantPartsResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const participant = await this.sessionParticipantRepository.findOne({
      where: { id: participantId, sessionId },
    });
    if (!participant) {
      throw new NotFoundException(
        `Participant ${participantId} not found in session ${sessionId}`,
      );
    }
    if (!participant.isPlayer) {
      throw new BadRequestException(
        `Participant ${participantId} is not a player and cannot have parts`,
      );
    }
    if (participant.userId !== user.id) {
      throw new ForbiddenException(
        `User ${user.name} is not allowed to add parts to participant ${participantId}`,
      );
    }

    await this.sessionParticipantPartService.create(
      participantId,
      dto.sessionPartId,
      false, // won't allow to set primary part with this endpoint
    );
    return {
      sessionParticipant: await this.getSessionParticipant(
        sessionId,
        participantId,
      ),
    };
  }

  async updateSessionParticipantStatus(
    sessionId: number,
    participantId: number,
    dto: UpdateSessionParticipantStatusDto,
    user: User,
  ): Promise<UpdateSessionParticipantStatusResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const participant = await this.sessionParticipantRepository.findOne({
      where: { id: participantId, sessionId },
    });

    if (!participant) {
      throw new NotFoundException(
        `Participant ${participantId} not found in session ${sessionId}`,
      );
    }
    if (participant.userId !== user.id) {
      throw new ForbiddenException(
        `User ${user.name} is not allowed to add parts to participant ${participantId}`,
      );
    }
    const savedParticipant = await this.sessionParticipantRepository.save({
      ...participant,
      status: this.mapProtoStatusToEntity(dto.status),
    });

    return {
      sessionParticipant: await this.mapParticipantToProto(savedParticipant),
    };
  }

  private async mapParticipantToProto(
    participant: SessionParticipant,
  ): Promise<ProtoSessionParticipant> {
    const user = await this.userService.getUser(participant.userId);
    const { parts, primaryPartId } =
      await this.sessionParticipantPartService.findBySessionParticipantId(
        participant.id,
      );
    return {
      id: participant.id,
      user,
      parts,
      primaryPartId,
      isAdmin: participant.isAdmin,
      isPlayer: participant.isPlayer,
      status: this.mapStatusToProto(participant.status),
    };
  }

  private mapStatusToProto(
    status: SessionParticipantStatus,
  ): ProtoSessionParticipantStatus {
    switch (status) {
      case SessionParticipantStatus.Confirmed:
        return ProtoSessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED;
      case SessionParticipantStatus.Cancelled:
        return ProtoSessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CANCELLED;
      default:
        return ProtoSessionParticipantStatus.SESSION_PARTICIPANT_STATUS_UNSPECIFIED;
    }
  }

  private mapProtoStatusToEntity(
    status: ProtoSessionParticipantStatus,
  ): SessionParticipantStatus {
    switch (status) {
      case ProtoSessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CONFIRMED:
        return SessionParticipantStatus.Confirmed;
      case ProtoSessionParticipantStatus.SESSION_PARTICIPANT_STATUS_CANCELLED:
        return SessionParticipantStatus.Cancelled;
      default:
        return SessionParticipantStatus.Confirmed;
    }
  }
}
