import { IsNotEmpty, IsString, MaxLength } from 'class-validator';
import { UpdateIntroductionRequest } from '../../proto/bst/v1/my_profile_service';

export class UpdateIntroductionDto implements UpdateIntroductionRequest {
  @IsNotEmpty()
  @IsString()
  @MaxLength(1000)
  introduction: string;
}
