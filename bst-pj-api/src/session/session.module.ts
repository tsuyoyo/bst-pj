import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Session } from '../entities/session.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { SessionService } from './session.service';

@Module({
  imports: [TypeOrmModule.forFeature([Session, SessionParticipant])],
  providers: [SessionService],
  exports: [SessionService],
})
export class SessionModule {}
