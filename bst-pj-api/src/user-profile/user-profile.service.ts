import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { GetUserProfileResponse } from '../proto/bst/v1/user_profile_service';
import { Area } from '../entities/area.entity';
import { UserGenreService } from '../user-genre/user-genre.service';
import { UserPartService } from '../user-part/user-part.service';
import { UserArtistService } from '../user-artist/user-artist.service';

@Injectable()
export class UserProfileService {
  constructor(
    @InjectRepository(UserProfile)
    private readonly userProfileRepository: Repository<UserProfile>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
    private readonly userGenreService: UserGenreService,
    private readonly userPartService: UserPartService,
    private readonly userArtistService: UserArtistService,
  ) {}

  private mapUserToProto(user: User) {
    return {
      id: user.id,
      name: user.name,
      email: user.email,
      icon: user.iconUrl || '',
    };
  }

  private mapProfileToProto(profile: UserProfile) {
    return {
      bio: profile.bio || '',
      areaId: profile.areaId || 0,
    };
  }

  async getUserProfile(userId: number): Promise<GetUserProfileResponse> {
    const userProfile = await this.userProfileRepository.findOne({
      where: { userId },
      relations: ['user', 'area'],
    });

    if (!userProfile) {
      throw new NotFoundException(
        `User profile not found for user ID: ${userId}`,
      );
    }

    const userGenres =
      await this.userGenreService.getUserPreferredGenres(userId);

    const userParts = await this.userPartService.getUserPreferredParts(userId);

    const userArtists =
      await this.userArtistService.getUserPreferredArtists(userId);

    return {
      profile: {
        user: this.mapUserToProto(userProfile.user),
        ...this.mapProfileToProto(userProfile),
        area: userProfile.area
          ? {
              name: userProfile.area.name,
              prefectureId: userProfile.area.prefectureId,
            }
          : undefined,
        favorite: {
          genres: userGenres,
          artists: userArtists,
          parts: userParts,
        },
        introduction: '',
        createdAt: userProfile.user.createdAt,
        badges: [], // TODO: Badge design hasn't been fixed yet.
      },
    };
  }
}
