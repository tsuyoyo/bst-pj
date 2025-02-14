import { IsNotEmpty, IsNumber } from 'class-validator';
import { FollowUserRequest } from '../../proto/bst/v1/follow_service';

export class FollowUserDto implements FollowUserRequest {
  @IsNotEmpty()
  @IsNumber()
  followingId: number;
}
