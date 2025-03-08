import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { JwtModule } from '@nestjs/jwt';
import { StudioRoom } from '../entities/studio-room.entity';
import { StudioRoomInfo } from '../entities/studio-room-info.entity';
import { StudioRoomInfoType } from '../entities/studio-room-info-type.entity';
import { User } from '../entities/user.entity';
import { StudioRoomService } from './studio-room.service';
import { StudioRoomController } from './studio-room.controller';
import { StudioRoomInfoTypeService } from './studio-room-info-type.service';
import { StudioRoomInfoTypeController } from './studio-room-info-type.controller';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      StudioRoom,
      StudioRoomInfo,
      StudioRoomInfoType,
      User,
    ]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
    AuthModule,
  ],
  providers: [StudioRoomService, StudioRoomInfoTypeService],
  controllers: [StudioRoomController, StudioRoomInfoTypeController],
})
export class StudioRoomModule {}
