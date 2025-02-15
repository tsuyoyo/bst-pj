import { IsArray, IsNumber } from 'class-validator';
import { UpdateUserPartsRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserPartsDto implements UpdateUserPartsRequest {
  @IsArray()
  @IsNumber({}, { each: true })
  partIds: number[];
}
