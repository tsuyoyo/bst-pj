import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Party } from '../entities/party.entity';
import { PartyService } from './party.service';
import { PartyController } from './party.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Party])],
  providers: [PartyService],
  controllers: [PartyController],
})
export class PartyModule {}
