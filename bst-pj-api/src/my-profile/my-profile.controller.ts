import { Body, Controller, Put, UseGuards } from '@nestjs/common';
import { MyProfileService } from './my-profile.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { UpdateResponse } from '../proto/bst/v1/my_profile_service';
import { UpdateIntroductionDto } from './dto/update-introduction.dto';
import { UpdateUserNameDto } from './dto/update-user-name.dto';
import { UpdateUserIconDto } from './dto/update-user-icon.dto';
import { UpdateUserGenresDto } from './dto/update-user-genres.dto';
import { UpdateUserArtistsDto } from './dto/update-user-artists.dto';
import { UpdateUserPartsDto } from './dto/update-user-parts.dto';
import { UpdateUserAreaDto } from './dto/update-user-area.dto';

@Controller('my-profile')
@UseGuards(JwtAuthGuard)
export class MyProfileController {
  constructor(private readonly myProfileService: MyProfileService) {}

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
    return this.myProfileService.updateUserArea(user.id, request.areaId);
  }
}
