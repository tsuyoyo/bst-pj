import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Studio } from '../entities/studio.entity';
import { StudioController } from './studio.controller';
import { StudioService } from './studio.service';
import { Location } from '../entities/location.entity';
import { JwtModule } from '@nestjs/jwt';
import { User } from '../entities/user.entity';
import { Area } from '../entities/area.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Studio, Location, User, Area]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
  ],
  controllers: [StudioController],
  providers: [StudioService],
  exports: [StudioService],
})
export class StudioModule {}
