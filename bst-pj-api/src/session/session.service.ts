import {
  Injectable,
  NotFoundException,
  ForbiddenException,
} from '@nestjs/common';
import { Session } from '../entities/session.entity';
import { User } from '../entities/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionParticipant } from '../entities/session-participant.entity';
@Injectable()
export class SessionService {
  constructor(
    @InjectRepository(Session)
    private readonly sessionRepository: Repository<Session>,
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
  ) {}

  async verifySessionAccess(sessionId: number, user: User): Promise<void> {
    const session = await this.sessionRepository.findOne({
      where: { id: sessionId },
    });

    if (!session) {
      throw new NotFoundException(`Session with ID ${sessionId} not found`);
    }

    const isUserParticipant = await this.checkUserParticipation(
      sessionId,
      user.id,
    );
    if (!isUserParticipant) {
      throw new ForbiddenException(
        `User does not have access to session ${sessionId}`,
      );
    }
  }

  private async checkUserParticipation(
    sessionId: number,
    userId: number,
  ): Promise<boolean> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { sessionId, userId },
    });
    return sessionParticipant !== null;
  }
}
