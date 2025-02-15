import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserArtist } from '../entities/user-artist.entity';
import { Artist } from '../entities/artist.entity';
import { User } from '../entities/user.entity';
import { UserArtistService } from './user-artist.service';
import { JwtModule } from '@nestjs/jwt';
import { ArtistModule } from '../artist/artist.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserArtist, Artist, User]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
    ArtistModule,
  ],
  providers: [UserArtistService],
  exports: [UserArtistService],
})
export class UserArtistModule {}
