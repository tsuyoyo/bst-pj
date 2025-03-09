import { IsArray, IsInt } from 'class-validator';
import { UpdateUserAreaRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserAreaDto implements UpdateUserAreaRequest {
  @IsArray()
  @IsInt({ each: true })
  prefectureIds: number[];
}
