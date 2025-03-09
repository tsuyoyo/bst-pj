import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserProfile } from '../entities/user-profile.entity';
import { User } from '../entities/user.entity';
import { UserGenre } from '../entities/user-genre.entity';
import { UserPart } from '../entities/user-part.entity';
import { UserArtist } from '../entities/user-artist.entity';
import {
  GetMyProfileResponse,
  UpdateResponse,
} from '../proto/bst/v1/my_profile_service';
import { UserProfileService } from '../user-profile/user-profile.service';
import { UserService } from '../user/user.service';

@Injectable()
export class MyProfileService {
  constructor(
    @InjectRepository(UserProfile)
    private readonly userProfileRepository: Repository<UserProfile>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(UserGenre)
    private readonly userGenreRepository: Repository<UserGenre>,
    @InjectRepository(UserPart)
    private readonly userPartRepository: Repository<UserPart>,
    @InjectRepository(UserArtist)
    private readonly userArtistRepository: Repository<UserArtist>,
    private readonly userProfileService: UserProfileService,
    private readonly userService: UserService,
  ) {}

  async getMyProfile(userId: number): Promise<GetMyProfileResponse> {
    const userProfile = await this.userProfileService.getUserProfile(userId);
    if (!userProfile) {
      throw new NotFoundException(
        `User profile not found for user ID: ${userId}`,
      );
    }

    const user = await this.userRepository.findOne({
      where: { id: userId },
    });
    if (!user) {
      throw new NotFoundException(`User not found with ID: ${userId}`);
    }

    return {
      profile: userProfile.profile,
      email: user.email,
    };
  }

  async updateIntroduction(
    userId: number,
    introduction: string,
  ): Promise<UpdateResponse> {
    const userProfile = await this.userProfileRepository.findOne({
      where: { userId },
    });

    if (!userProfile) {
      throw new NotFoundException(
        `User profile not found for user ID: ${userId}`,
      );
    }

    userProfile.bio = introduction;
    await this.userProfileRepository.save(userProfile);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  async updateUserName(userId: number, name: string): Promise<UpdateResponse> {
    const user = await this.userRepository.findOne({
      where: { id: userId },
    });

    if (!user) {
      throw new NotFoundException(`User not found with ID: ${userId}`);
    }

    user.name = name;
    await this.userRepository.save(user);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  /**
   * ユーザーのアイコンを更新します
   * @param userId ユーザーID
   * @param icon アイコンURL
   * @returns 更新結果
   */
  async updateUserIcon(userId: number, icon: string): Promise<UpdateResponse> {
    const user = await this.userRepository.findOne({
      where: { id: userId },
    });

    if (!user) {
      throw new NotFoundException(`User not found with ID: ${userId}`);
    }

    user.iconUrl = icon;
    await this.userRepository.save(user);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  /**
   * ユーザーの現在のアイコンURLを取得します
   * @param userId ユーザーID
   * @returns アイコンURL（存在しない場合はnull）
   */
  async getUserIconUrl(userId: number): Promise<string | null> {
    try {
      const user = await this.userRepository.findOne({
        where: { id: userId },
      });
      return user?.iconUrl || null;
    } catch (error) {
      console.error('ユーザーアイコン取得エラー:', error);
      return null;
    }
  }

  async updateUserGenres(
    userId: number,
    genreIds: number[],
  ): Promise<UpdateResponse> {
    await this.userGenreRepository.delete({ userId });

    const userGenres = genreIds.map((genreId) => ({
      userId,
      genreId,
    }));
    await this.userGenreRepository.save(userGenres);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  async updateUserArtists(
    userId: number,
    artistIds: number[],
  ): Promise<UpdateResponse> {
    await this.userArtistRepository.delete({ userId });

    const userArtists = artistIds.map((artistId) => ({
      userId,
      artistId,
    }));
    await this.userArtistRepository.save(userArtists);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  async updateUserParts(
    userId: number,
    partIds: number[],
  ): Promise<UpdateResponse> {
    await this.userPartRepository.delete({ userId });

    const userParts = partIds.map((partId) => ({
      userId,
      partId,
    }));
    await this.userPartRepository.save(userParts);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }

  async updateUserArea(
    userId: number,
    prefectureId: number,
  ): Promise<UpdateResponse> {
    const userProfile = await this.userProfileRepository.findOne({
      where: { userId },
    });

    if (!userProfile) {
      throw new NotFoundException(
        `User profile not found for user ID: ${userId}`,
      );
    }

    userProfile.prefectureId = prefectureId;
    await this.userProfileRepository.save(userProfile);

    const updatedProfile = await this.userProfileService.getUserProfile(userId);
    return {
      success: true,
      profile: updatedProfile.profile,
    };
  }
}
