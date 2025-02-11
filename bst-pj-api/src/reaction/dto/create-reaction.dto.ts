import { IsNotEmpty, IsNumber } from 'class-validator';
import { CreateReactionRequest } from '../../proto/bst/v1/reaction_service';

export class CreateReactionDto implements CreateReactionRequest {
  @IsNotEmpty()
  @IsNumber()
  targetId: number;

  @IsNotEmpty()
  @IsNumber()
  reactionTypeId: number;
}
