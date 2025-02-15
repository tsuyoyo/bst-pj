import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserPart } from '../entities/user-part.entity';
import { Part } from '../entities/part.entity';
import { User } from '../entities/user.entity';
import { UserPartService } from './user-part.service';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserPart, Part, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
  ],
  providers: [UserPartService],
  exports: [UserPartService],
})
export class UserPartModule {}
