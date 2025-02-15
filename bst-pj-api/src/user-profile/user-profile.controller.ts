import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { UserProfileService } from './user-profile.service';
import {
  GetUserProfileRequest,
  GetUserProfileResponse,
} from '../proto/bst/v1/user_profile_service';

@Controller('user-profiles')
export class UserProfileController {
  constructor(private readonly userProfileService: UserProfileService) {}

  @Get(':userId')
  async getUserProfile(
    @Param('userId', ParseIntPipe) userId: number,
  ): Promise<GetUserProfileResponse> {
    const request: GetUserProfileRequest = { userId };
    return this.userProfileService.getUserProfile(request.userId);
  }
}
