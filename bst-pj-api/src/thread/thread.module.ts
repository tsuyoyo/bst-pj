import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ThreadController } from './thread.controller';
import { ThreadService } from './thread.service';
import { Thread } from '../entities/thread.entity';
import { UserService } from '../user/user.service';
import { Comment } from '../entities/comment.entity';
import { User } from '../entities/user.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Thread, Comment, User])],
  controllers: [ThreadController],
  providers: [ThreadService, UserService],
  exports: [ThreadService],
})
export class ThreadModule {}
