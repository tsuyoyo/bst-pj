import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { GetUserProfileResponse } from '../proto/bst/v1/user_profile_service';
import { UserGenreService } from '../user-genre/user-genre.service';
import { UserPartService } from '../user-part/user-part.service';
import { UserArtistService } from '../user-artist/user-artist.service';
import { UserService } from '../user/user.service';
import { UserPrefectureService } from '../user-prefecture/user-prefecture.service';

@Injectable()
export class UserProfileService {
  constructor(
    @InjectRepository(UserProfile)
    private readonly userProfileRepository: Repository<UserProfile>,
    private readonly userService: UserService,
    private readonly userGenreService: UserGenreService,
    private readonly userPartService: UserPartService,
    private readonly userArtistService: UserArtistService,
    private readonly userPrefectureService: UserPrefectureService,
  ) {}

  private mapProfileToProto(profile: UserProfile) {
    return {
      bio: profile.bio || '',
    };
  }

  async getUserProfile(userId: number): Promise<GetUserProfileResponse> {
    const userProfile = await this.userProfileRepository.findOne({
      where: { userId },
      relations: ['user'],
    });

    if (!userProfile) {
      throw new NotFoundException(
        `User profile not found for user ID: ${userId}`,
      );
    }

    const areas = await this.userPrefectureService.getUserPrefectures(userId);

    const userGenres =
      await this.userGenreService.getUserPreferredGenres(userId);

    const userParts = await this.userPartService.getUserPreferredParts(userId);

    const userArtists =
      await this.userArtistService.getUserPreferredArtists(userId);

    return {
      profile: {
        user: this.userService.mapUserToProto(userProfile.user),
        ...this.mapProfileToProto(userProfile),
        areas: areas,
        favorite: {
          genres: userGenres,
          artists: userArtists,
          parts: userParts,
        },
        introduction: userProfile.bio || '',
        createdAt: userProfile.user.createdAt,
        badges: [], // TODO: Badge design hasn't been fixed yet.
      },
    };
  }
}
