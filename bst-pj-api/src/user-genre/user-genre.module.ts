import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserGenre } from '../entities/user-genre.entity';
import { Genre } from '../entities/genre.entity';
import { User } from '../entities/user.entity';
import { UserGenreService } from './user-genre.service';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserGenre, Genre, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
  ],
  providers: [UserGenreService],
  exports: [UserGenreService],
})
export class UserGenreModule {}
