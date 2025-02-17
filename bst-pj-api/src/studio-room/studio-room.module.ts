import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { StudioRoom } from '../entities/studio-room.entity';
import { StudioRoomService } from './studio-room.service';
import { StudioRoomController } from './studio-room.controller';

@Module({
  imports: [TypeOrmModule.forFeature([StudioRoom])],
  providers: [StudioRoomService],
  controllers: [StudioRoomController],
})
export class StudioRoomModule {}
