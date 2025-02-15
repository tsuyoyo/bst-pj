import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { JwtModule } from '@nestjs/jwt';
import { MyProfileController } from './my-profile.controller';
import { MyProfileService } from './my-profile.service';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { UserGenre } from '../entities/user-genre.entity';
import { UserPart } from '../entities/user-part.entity';
import { UserArtist } from '../entities/user-artist.entity';
import { UserProfileService } from '../user-profile/user-profile.service';
import { UserGenreService } from '../user-genre/user-genre.service';
import { UserPartService } from '../user-part/user-part.service';
import { UserArtistService } from '../user-artist/user-artist.service';
import { UserService } from '../user/user.service';
import { Genre } from '../entities/genre.entity';
import { Artist } from '../entities/artist.entity';
import { Part } from '../entities/part.entity';
import { Area } from '../entities/area.entity';
import { ArtistModule } from '../artist/artist.module';
import { UserGenreModule } from '../user-genre/user-genre.module';
import { UserPartModule } from '../user-part/user-part.module';
import { UserArtistModule } from '../user-artist/user-artist.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      UserProfile,
      User,
      UserGenre,
      UserPart,
      UserArtist,
      Genre,
      Artist,
      Part,
      Area,
    ]),
    JwtModule.register({
      secret: process.env.JWT_SECRET || 'your-secret-key',
      signOptions: { expiresIn: '1d' },
    }),
    ArtistModule,
    UserGenreModule,
    UserPartModule,
    UserArtistModule,
  ],
  controllers: [MyProfileController],
  providers: [
    MyProfileService,
    UserProfileService,
    UserService,
    UserGenreService,
    UserPartService,
    UserArtistService,
  ],
  exports: [MyProfileService],
})
export class MyProfileModule {}
