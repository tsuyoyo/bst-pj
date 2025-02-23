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
} from '../proto/bst/v1/session_participant_service';
import { SessionParticipantPart } from '../entities/session-participant-part.entity';
import { UserService } from '../user/user.service';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionParticipantPartService } from '../session-participant/session-participant-part.service';
import {
  SessionParticipantStatus as ProtoSessionParticipantStatus,
  SessionParticipant as ProtoSessionParticipant,
} from '../proto/bst/v1/session';

@Injectable()
export class SessionParticipantService {
  constructor(
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
    @InjectRepository(SessionParticipantPart)
    private readonly sessionParticipantPartRepository: Repository<SessionParticipantPart>,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
    private readonly userService: UserService,
    private readonly sessionPartService: SessionPartService,
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
}
