import { IsNotEmpty, IsString, IsUrl } from 'class-validator';
import { CreateReactionTypeRequest } from '../../proto/bst/v1/reaction_service';

export class CreateReactionTypeDto implements CreateReactionTypeRequest {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  description: string;

  @IsNotEmpty()
  @IsUrl()
  iconUrl: string;
}
