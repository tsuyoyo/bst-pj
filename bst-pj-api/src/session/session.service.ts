import { Injectable } from '@nestjs/common';
import { Session } from '../entities/session.entity';
import {
  Session as ProtoSession,
  SessionStatus as ProtoSessionStatus,
  SessionDetail as ProtoSessionDetail,
} from '../proto/bst/v1/session';
import { User } from '../entities/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionParticipant } from '../entities/session-participant.entity';
import { CreateSessionDto } from './dto/create-session.dto';
import { CreateSessionResponse } from '../proto/bst/v1/session_service';
import { SessionStatus } from '../entities/types/session-status.enum';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionParticipantService } from '../session-participant/session-participant.service';
@Injectable()
export class SessionService {
  constructor(
    @InjectRepository(Session)
    private readonly sessionRepository: Repository<Session>,
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
    private readonly sessionPartService: SessionPartService,
    private readonly sessionParticipantService: SessionParticipantService,
  ) {}

  async createSession(
    createSessionDto: CreateSessionDto,
    user: User,
  ): Promise<CreateSessionResponse> {
    const session = this.sessionRepository.create({
      title: createSessionDto.title,
      description: createSessionDto.description,
      date: createSessionDto.eventDate,
      creatorId: user.id,
    });

    const savedSession = await this.sessionRepository.save(session);

    const sessionParticipant = this.sessionParticipantRepository.create({
      sessionId: savedSession.id,
      userId: user.id,
      isAdmin: true,
    });
    await this.sessionParticipantRepository.save(sessionParticipant);

    const protoSession = await this.mapSessionToProto(savedSession);
    return {
      session: protoSession,
    };
  }

  private async getSessionParticipantsNum(sessionId: number): Promise<number> {
    return this.sessionParticipantRepository.count({
      where: { sessionId },
    });
  }

  private async mapSessionToProto(session: Session): Promise<ProtoSession> {
    const participantsNum = await this.getSessionParticipantsNum(session.id);
    return {
      id: session.id,
      title: session.title,
      createdAt: session.createdAt,
      entryOpen: session.entryOpenDate,
      entryClose: session.entryCloseDate,
      eventDate: session.date,
      status: this.mapEntitySessionStatusToProto(session.status),
      participantsNum: participantsNum,
    };
  }

  private async mapSessionToProtoDetail(
    session: Session,
    user: User,
  ): Promise<ProtoSessionDetail> {
    const { parts } = await this.sessionPartService.listSessionParts(
      session.id,
    );
    const { participants } =
      await this.sessionParticipantService.listSessionParticipants(
        session.id,
        user,
      );
    return {
      session: await this.mapSessionToProto(session),
      description: session.description,
      parts,
      participants,
    };
  }

  private mapEntitySessionStatusToProto(
    status: SessionStatus,
  ): ProtoSessionStatus {
    switch (status) {
      case SessionStatus.BeforeEntry:
        return ProtoSessionStatus.SESSION_STATUS_BEFORE_ENTRY;
      case SessionStatus.EntryOpen:
        return ProtoSessionStatus.SESSION_STATUS_ENTRY_OPEN;
      case SessionStatus.EntryClosed:
        return ProtoSessionStatus.SESSION_STATUS_ENTRY_CLOSE;
      case SessionStatus.Approaching:
        return ProtoSessionStatus.SESSION_STATUS_APPROACHING;
      case SessionStatus.Ongoing:
        return ProtoSessionStatus.SESSION_STATUS_ONGOING;
      case SessionStatus.Completed:
        return ProtoSessionStatus.SESSION_STATUS_COMPLETED;
      case SessionStatus.Cancelled:
        return ProtoSessionStatus.SESSION_STATUS_CANCELLED;
    }
  }
}
