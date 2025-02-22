import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Session } from '../entities/session.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { SessionService } from './session.service';
import { SessionController } from './session.controller';
import { SessionVerifyAccessService } from './session-verify-access.service';
@Module({
  imports: [TypeOrmModule.forFeature([Session, SessionParticipant])],
  controllers: [SessionController],
  providers: [SessionService, SessionVerifyAccessService],
  exports: [SessionService],
})
export class SessionModule {}
