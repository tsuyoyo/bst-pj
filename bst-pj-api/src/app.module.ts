import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { ArtistModule } from './artist/artist.module';
import { GenreModule } from './genre/genre.module';
import { ResourceModule } from './resource/resource.module';
import { PartModule } from './part/part.module';
import { LocationModule } from './location/location.module';
import { StudioModule } from './studio/studio.module';
import { ReactionModule } from './reaction/reaction.module';
import { RatingModule } from './rating/rating.module';
import { FollowModule } from './follow/follow.module';
import { CommentModule } from './comment/comment.module';
import { UserProfileModule } from './user-profile/user-profile.module';
import { MyProfileModule } from './my-profile/my-profile.module';
import { SongModule } from './song/song.module';
import { AreaModule } from './area/area.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: (configService: ConfigService) => ({
        type: 'postgres',
        host: configService.get('POSTGRES_HOST'),
        port: +configService.get<number>('POSTGRES_PORT')!,
        username: configService.get('POSTGRES_USER'),
        password: configService.get('POSTGRES_PASSWORD'),
        database: configService.get('POSTGRES_DB'),
        entities: [__dirname + '/**/*.entity{.ts,.js}'],
        synchronize: false,
        logging: configService.get('NODE_ENV') === 'development',
      }),
      inject: [ConfigService],
    }),
    AuthModule,
    ArtistModule,
    GenreModule,
    ResourceModule,
    PartModule,
    LocationModule,
    StudioModule,
    ReactionModule,
    RatingModule,
    FollowModule,
    CommentModule,
    UserProfileModule,
    MyProfileModule,
    SongModule,
    AreaModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
