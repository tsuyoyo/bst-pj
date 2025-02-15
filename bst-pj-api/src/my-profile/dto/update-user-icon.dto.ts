import { IsNotEmpty, IsString, IsUrl } from 'class-validator';
import { UpdateUserIconRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserIconDto implements UpdateUserIconRequest {
  @IsNotEmpty()
  @IsString()
  @IsUrl()
  icon: string;
}
