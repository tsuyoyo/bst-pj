import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Artist } from '../entities/artist.entity';
import { ArtistGenre } from '../entities/artist-genre.entity';
import { Genre } from '../entities/genre.entity';
import { ArtistController } from './artist.controller';
import { ArtistService } from './artist.service';
import { JwtModule } from '@nestjs/jwt';
import { User } from '../entities/user.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Artist, ArtistGenre, Genre, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
  ],
  controllers: [ArtistController],
  providers: [ArtistService],
  exports: [ArtistService],
})
export class ArtistModule {}
