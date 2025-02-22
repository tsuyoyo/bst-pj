import { Injectable } from '@nestjs/common';
import { User } from '../entities/user.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class SessionVerifyAccessService {
  constructor(
    @InjectRepository(SessionParticipant)
    private readonly sessionParticipantRepository: Repository<SessionParticipant>,
  ) {}

  async verifySessionAccess(sessionId: number, user: User): Promise<void> {
    const sessionParticipant = await this.sessionParticipantRepository.findOne({
      where: { sessionId, userId: user.id },
    });
    if (!sessionParticipant) {
      throw new Error('User does not have access to this session');
    }
  }
}
