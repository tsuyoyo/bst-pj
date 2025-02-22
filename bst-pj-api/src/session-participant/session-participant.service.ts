import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { SessionParticipant } from '../entities/session-participant.entity';
import { User } from '../entities/user.entity';
import { ListSessionParticipantsResponse } from '../proto/bst/v1/session_participant_service';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { Repository } from 'typeorm';

@Injectable()
export class SessionParticipantService {
  constructor(
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
  ) {}

  async listSessionParticipants(
    sessionId: number,
    user: User,
  ): Promise<ListSessionParticipantsResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);
    const sessionParticipants = await this.sessionParticipantRepository.find({
      where: { sessionId },
    });
    return {
      participants: [], // TODO: ここにデータを入れる
      //   sessionParticipants.map((participant) => ({
      //     id: participant.id,
      //     name: participant.user.name,
      //   })),
    };
  }
}
