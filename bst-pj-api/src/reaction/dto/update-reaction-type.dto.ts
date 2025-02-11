import { IsNotEmpty, IsNumber, IsString, IsUrl } from 'class-validator';
import { UpdateReactionTypeRequest } from '../../proto/bst/v1/reaction_service';

export class UpdateReactionTypeDto implements UpdateReactionTypeRequest {
  @IsNotEmpty()
  @IsNumber()
  reactionTypeId: number;

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
