import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { LocationController } from './location.controller';
import { LocationService } from './location.service';
import { Location } from '../entities/location.entity';
import { Area } from '../entities/area.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Location, Area])],
  controllers: [LocationController],
  providers: [LocationService],
  exports: [LocationService],
})
export class LocationModule {}
