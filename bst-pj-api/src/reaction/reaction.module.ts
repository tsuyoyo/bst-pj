import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ReactionController } from './reaction.controller';
import { ReactionService } from './reaction.service';
import { ReactionType } from '../entities/reaction-type.entity';
import { Reaction } from '../entities/reaction.entity';
import { JwtModule } from '@nestjs/jwt';
import { User } from '../entities/user.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([ReactionType, Reaction, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
  ],
  controllers: [ReactionController],
  providers: [ReactionService],
  exports: [ReactionService],
})
export class ReactionModule {}
