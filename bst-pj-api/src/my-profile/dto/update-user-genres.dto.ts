import { IsArray, IsNumber } from 'class-validator';
import { UpdateUserGenresRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserGenresDto implements UpdateUserGenresRequest {
  @IsArray()
  @IsNumber({}, { each: true })
  genreIds: number[];
}
