import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { JwtModule } from '@nestjs/jwt';
import { StudioRoom } from '../entities/studio-room.entity';
import { StudioRoomInfo } from '../entities/studio-room-info.entity';
import { User } from '../entities/user.entity';
import { StudioRoomService } from './studio-room.service';
import { StudioRoomController } from './studio-room.controller';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([StudioRoom, StudioRoomInfo, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
    AuthModule,
  ],
  providers: [StudioRoomService],
  controllers: [StudioRoomController],
})
export class StudioRoomModule {}
