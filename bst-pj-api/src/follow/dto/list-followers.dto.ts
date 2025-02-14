import { IsNotEmpty, IsNumber } from 'class-validator';
import { ListFollowersRequest } from '../../proto/bst/v1/follow_service';

export class ListFollowersDto implements ListFollowersRequest {
  @IsNotEmpty()
  @IsNumber()
  userId: number;
}
