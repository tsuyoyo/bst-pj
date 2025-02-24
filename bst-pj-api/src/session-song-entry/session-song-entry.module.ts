import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SessionSongEntry } from '../entities/session-song-entry.entity';
import { SessionSongEntryController } from './session-song-entry.controller';
import { SessionSongEntryService } from './session-song-entry.service';
import { SessionModule } from '../session/session.module';
import { SessionParticipantModule } from '../session-participant/session-participant.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([SessionSongEntry]),
    SessionModule,
    SessionParticipantModule,
  ],
  controllers: [SessionSongEntryController],
  providers: [SessionSongEntryService],
  exports: [SessionSongEntryService],
})
export class SessionSongEntryModule {}
