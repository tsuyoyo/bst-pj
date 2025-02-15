import { IsArray, IsNumber } from 'class-validator';
import { UpdateUserArtistsRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserArtistsDto implements UpdateUserArtistsRequest {
  @IsArray()
  @IsNumber({}, { each: true })
  artistIds: number[];
}
