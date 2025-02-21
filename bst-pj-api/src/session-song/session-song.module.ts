import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SongPerformance } from '../entities/song-performance.entity';
import { RequiredPart } from '../entities/required-part.entity';
import { SessionSongController } from './session-song.controller';
import { SessionSongService } from './session-song.service';
import { SessionModule } from '../session/session.module';
import { SongModule } from '../song/song.module';
import { PartModule } from '../part/part.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([SongPerformance, RequiredPart]),
    SessionModule,
    SongModule,
    PartModule,
  ],
  controllers: [SessionSongController],
  providers: [SessionSongService],
  exports: [SessionSongService],
})
export class SessionSongModule {}
