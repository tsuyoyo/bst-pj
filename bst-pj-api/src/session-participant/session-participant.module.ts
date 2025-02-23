import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SessionParticipant } from '../entities/session-participant.entity';
import { SessionParticipantPart } from '../entities/session-participant-part.entity';
import { SessionParticipantController } from './session-participant.controller';
import { SessionParticipantService } from './session-participant.service';
import { SessionParticipantPartService } from './session-participant-part.service';
import { SessionModule } from '../session/session.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([SessionParticipant, SessionParticipantPart]),
    SessionModule,
  ],
  controllers: [SessionParticipantController],
  providers: [SessionParticipantService, SessionParticipantPartService],
  exports: [SessionParticipantService, SessionParticipantPartService],
})
export class SessionParticipantModule {}
