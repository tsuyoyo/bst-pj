import { IsNotEmpty, IsNumber } from 'class-validator';
import { ListFollowingRequest } from '../../proto/bst/v1/follow_service';

export class ListFollowingDto implements ListFollowingRequest {
  @IsNotEmpty()
  @IsNumber()
  userId: number;
}
