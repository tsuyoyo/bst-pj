import {
  Body,
  Controller,
  Get,
  Post,
  Put,
  UploadedFile,
  UseGuards,
  UseInterceptors,
} from '@nestjs/common';
import { MyProfileService } from './my-profile.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  GetMyProfileResponse,
  UpdateResponse,
} from '../proto/bst/v1/my_profile_service';
import { UpdateIntroductionDto } from './dto/update-introduction.dto';
import { UpdateUserNameDto } from './dto/update-user-name.dto';
import { UpdateUserIconDto } from './dto/update-user-icon.dto';
import { UpdateUserGenresDto } from './dto/update-user-genres.dto';
import { UpdateUserArtistsDto } from './dto/update-user-artists.dto';
import { UpdateUserPartsDto } from './dto/update-user-parts.dto';
import { UpdateUserAreaDto } from './dto/update-user-area.dto';
import { GetIconUploadUrlResponseDto } from './dto/get-icon-upload-url.dto';
import { GcpStorageService } from './gcp-storage.service';
import { FileInterceptor } from '@nestjs/platform-express';
import { UploadIconResponseDto } from './dto/upload-icon-response.dto';
import { FileValidationService } from './file-validation.service';

@Controller('my-profile')
@UseGuards(JwtAuthGuard)
export class MyProfileController {
  constructor(
    private readonly myProfileService: MyProfileService,
    private readonly gcpStorageService: GcpStorageService,
    private readonly fileValidationService: FileValidationService,
  ) {}

  @Get()
  async getMyProfile(@CurrentUser() user: User): Promise<GetMyProfileResponse> {
    return this.myProfileService.getMyProfile(user.id);
  }

  @Post('icon/upload-url')
  async getIconUploadUrl(
    @CurrentUser() user: User,
  ): Promise<GetIconUploadUrlResponseDto> {
    const { uploadUrl, publicUrl } =
      await this.gcpStorageService.generateSignedUrlForUserIcon(user.id);
    return { uploadUrl, publicUrl };
  }

  @Post('icon/upload')
  @UseInterceptors(
    FileInterceptor('icon', {
      limits: {
        fileSize: 5 * 1024 * 1024, // 5MB（アップロード前の制限）
      },
    }),
  )
  async uploadIcon(
    @UploadedFile() file: Express.Multer.File,
    @CurrentUser() user: User,
  ): Promise<UploadIconResponseDto> {
    // 現在のアイコンURLを取得
    const currentIconUrl = await this.myProfileService.getUserIconUrl(user.id);

    // ファイルのバリデーションと圧縮を行う（圧縮後のサイズバリデーションも含む）
    await this.fileValidationService.validateAndCompressImage(file, 256);

    // ファイルを圧縮してアップロード
    const { url: newIconUrl } =
      await this.gcpStorageService.compressAndUploadUserIcon(
        user.id,
        file,
        256, // 圧縮後の最大サイズ（KB）
      );

    // アップロードしたURLをデータベースに保存
    await this.myProfileService.updateUserIcon(user.id, newIconUrl);

    // 古いアイコンを削除（存在する場合）
    if (currentIconUrl) {
      // user-iconsディレクトリのファイルのみ削除（デフォルトアイコンなどは削除しない）
      if (currentIconUrl.includes('/user-icons/')) {
        await this.gcpStorageService.deleteFile(currentIconUrl);
      }
    }

    return {
      iconUrl: newIconUrl,
      message: 'アイコンが正常にアップロードされました',
    };
  }

  @Put('introduction')
  async updateIntroduction(
    @Body() request: UpdateIntroductionDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateIntroduction(
      user.id,
      request.introduction,
    );
  }

  @Put('name')
  async updateUserName(
    @Body() request: UpdateUserNameDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserName(user.id, request.name);
  }

  @Put('icon')
  async updateUserIcon(
    @Body() request: UpdateUserIconDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserIcon(user.id, request.icon);
  }

  @Put('genres')
  async updateUserGenres(
    @Body() request: UpdateUserGenresDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserGenres(user.id, request.genreIds);
  }

  @Put('artists')
  async updateUserArtists(
    @Body() request: UpdateUserArtistsDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserArtists(user.id, request.artistIds);
  }

  @Put('parts')
  async updateUserParts(
    @Body() request: UpdateUserPartsDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserParts(user.id, request.partIds);
  }

  @Put('area')
  async updateUserArea(
    @Body() request: UpdateUserAreaDto,
    @CurrentUser() user: User,
  ): Promise<UpdateResponse> {
    return this.myProfileService.updateUserPrefectures(
      user.id,
      request.prefectureIds,
    );
  }
}
