import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SessionPart } from '../entities/session-part.entity';
import { SessionPartController } from './session-part.controller';
import { SessionPartService } from './session-part.service';
import { SessionModule } from '../session/session.module';
import { PartModule } from '../part/part.module';

@Module({
  imports: [TypeOrmModule.forFeature([SessionPart]), SessionModule, PartModule],
  controllers: [SessionPartController],
  providers: [SessionPartService],
  exports: [SessionPartService],
})
export class SessionPartModule {}
