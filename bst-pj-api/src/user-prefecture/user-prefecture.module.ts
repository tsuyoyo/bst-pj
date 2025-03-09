import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserPrefecture } from '../entities/user-prefecture.entity';
import { Area as AreaEntity } from '../entities/area.entity';
import { UserPrefectureService } from './user-prefecture.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserPrefecture, AreaEntity])],
  providers: [UserPrefectureService],
  exports: [UserPrefectureService],
})
export class UserPrefectureModule {}
