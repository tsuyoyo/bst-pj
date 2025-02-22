import { Injectable } from '@nestjs/common';
import { Session } from '../entities/session.entity';
import {
  Session as ProtoSession,
  SessionStatus as ProtoSessionStatus,
} from '../proto/bst/v1/session';
import { User } from '../entities/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionParticipant } from '../entities/session-participant.entity';
import { CreateSessionDto } from './dto/create-session.dto';
import { CreateSessionResponse } from '../proto/bst/v1/session_service';
import { SessionStatus } from '../entities/types/session-status.enum';

@Injectable()
export class SessionService {
  constructor(
    @InjectRepository(Session)
    private readonly sessionRepository: Repository<Session>,
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
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

    const protoSession = await this.mapEntityToProto(savedSession);
    return {
      session: protoSession,
    };
  }

  async verifySessionAccess(sessionId: number, user: User): Promise<void> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { sessionId, userId: user.id },
    });
    if (!sessionParticipant) {
      throw new Error('User does not have access to this session');
    }
  }

  private async getSessionParticipantsNum(sessionId: number): Promise<number> {
    return this.sessionParticipantRepository.count({
      where: { sessionId },
    });
  }

  private async mapEntityToProto(session: Session): Promise<ProtoSession> {
    const participantsNum = await this.getSessionParticipantsNum(session.id);
    return {
      id: session.id,
      title: session.title,
      timeline: {
        createdAt: session.createdAt,
        entryOpen: session.entryOpenDate,
        entryClose: session.entryCloseDate,
        eventDate: session.date,
      },
      status: this.mapEntitySessionStatusToProto(session.status),
      participantsNum: participantsNum,
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
