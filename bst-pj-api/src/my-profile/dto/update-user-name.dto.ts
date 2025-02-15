import { IsNotEmpty, IsString, MaxLength } from 'class-validator';
import { UpdateUserNameRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateUserNameDto implements UpdateUserNameRequest {
  @IsNotEmpty()
  @IsString()
  @MaxLength(30)
  name: string;
}
