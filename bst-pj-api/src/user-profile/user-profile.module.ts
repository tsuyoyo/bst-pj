import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { UserProfileController } from './user-profile.controller';
import { UserProfileService } from './user-profile.service';
import { JwtModule } from '@nestjs/jwt';
import { UserGenre } from '../entities/user-genre.entity';
import { UserArtist } from '../entities/user-artist.entity';
import { UserPart } from '../entities/user-part.entity';
import { Genre } from '../entities/genre.entity';
import { Artist } from '../entities/artist.entity';
import { Part } from '../entities/part.entity';
import { Area } from '../entities/area.entity';
import { UserGenreModule } from '../user-genre/user-genre.module';
import { UserPartModule } from '../user-part/user-part.module';
import { UserArtistModule } from '../user-artist/user-artist.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      UserProfile,
      User,
      UserGenre,
      UserArtist,
      UserPart,
      Genre,
      Artist,
      Part,
      Area,
    ]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
    UserGenreModule,
    UserPartModule,
    UserArtistModule,
  ],
  controllers: [UserProfileController],
  providers: [UserProfileService],
  exports: [UserProfileService],
})
export class UserProfileModule {}
