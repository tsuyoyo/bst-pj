import { IsNotEmpty, IsNumber } from 'class-validator';
import { UpdateUserAreaRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserAreaDto implements UpdateUserAreaRequest {
  @IsNotEmpty()
  @IsNumber()
  prefectureId: number;
}
