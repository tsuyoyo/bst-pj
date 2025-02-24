import { Injectable, NotFoundException } from '@nestjs/common';
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
import {
  CreateSessionResponse,
  GetSessionResponse,
  UpdateSessionResponse,
  UpdateSessionStatusResponse,
  CancelSessionResponse,
} from '../proto/bst/v1/session_service';
import { SessionStatus } from '../entities/types/session-status.enum';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionParticipantService } from '../session-participant/session-participant.service';
import { SessionVerifyAccessService } from './session-verify-access.service';
import { UpdateSessionDto } from './dto/update-session.dto';
import { UpdateSessionStatusDto } from './dto/update-session-status.dto';

@Injectable()
export class SessionService {
  constructor(
    @InjectRepository(Session)
    private readonly sessionRepository: Repository<Session>,
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
    private readonly sessionPartService: SessionPartService,
    private readonly sessionParticipantService: SessionParticipantService,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
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
  ): Promise<ProtoSessionDetail> {
    const { parts } = await this.sessionPartService.listSessionParts(
      session.id,
    );
    const { participants } =
      await this.sessionParticipantService.listSessionParticipants(session.id);
    return {
      description: session.description,
      parts,
      participants,
    };
  }

  async getSession(id: number, user: User): Promise<GetSessionResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(id, user);
    const session = await this.sessionRepository.findOne({
      where: { id },
    });
    if (!session) {
      throw new NotFoundException(`Session with ID ${id} not found`);
    }

    return {
      session: await this.mapSessionToProto(session),
      detail: await this.mapSessionToProtoDetail(session),
    };
  }

  async updateSession(
    id: number,
    dto: UpdateSessionDto,
    user: User,
  ): Promise<UpdateSessionResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(id, user);
    const session = await this.sessionRepository.findOne({
      where: { id },
    });

    if (!session) {
      throw new NotFoundException(`Session with ID ${id} not found`);
    }

    const updatedSession = await this.sessionRepository.save({
      ...session,
      title: dto.title,
      description: dto.description,
      date: dto.eventDate,
    });

    return {
      session: await this.mapSessionToProto(updatedSession),
      detail: await this.mapSessionToProtoDetail(updatedSession),
    };
  }

  async updateSessionStatus(
    id: number,
    dto: UpdateSessionStatusDto,
    user: User,
  ): Promise<UpdateSessionStatusResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(id, user);
    const session = await this.sessionRepository.findOne({
      where: { id },
    });

    if (!session) {
      throw new NotFoundException(`Session with ID ${id} not found`);
    }

    const updatedSession = await this.sessionRepository.save({
      ...session,
      status: this.mapProtoSessionStatusToEntity(dto.status),
    });

    return {
      session: await this.mapSessionToProto(updatedSession),
      detail: await this.mapSessionToProtoDetail(updatedSession),
    };
  }

  async cancelSession(id: number, user: User): Promise<CancelSessionResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(id, user);
    const session = await this.sessionRepository.findOne({
      where: { id },
    });

    if (!session) {
      throw new NotFoundException(`Session with ID ${id} not found`);
    }

    const savedSession = await this.sessionRepository.save({
      ...session,
      status: SessionStatus.Cancelled,
    });

    return {
      session: await this.mapSessionToProto(savedSession),
      detail: await this.mapSessionToProtoDetail(savedSession),
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

  private mapProtoSessionStatusToEntity(
    status: ProtoSessionStatus,
  ): SessionStatus {
    switch (status) {
      case ProtoSessionStatus.SESSION_STATUS_UNSPECIFIED:
      case ProtoSessionStatus.SESSION_STATUS_BEFORE_ENTRY:
        return SessionStatus.BeforeEntry;
      case ProtoSessionStatus.SESSION_STATUS_ENTRY_OPEN:
        return SessionStatus.EntryOpen;
      case ProtoSessionStatus.SESSION_STATUS_ENTRY_CLOSE:
        return SessionStatus.EntryClosed;
      case ProtoSessionStatus.SESSION_STATUS_APPROACHING:
        return SessionStatus.Approaching;
      case ProtoSessionStatus.SESSION_STATUS_ONGOING:
        return SessionStatus.Ongoing;
      case ProtoSessionStatus.SESSION_STATUS_COMPLETED:
        return SessionStatus.Completed;
      case ProtoSessionStatus.SESSION_STATUS_CANCELLED:
        return SessionStatus.Cancelled;
      case ProtoSessionStatus.UNRECOGNIZED:
        throw new Error(`Unknown session status: ${status}`);
    }
  }
}
