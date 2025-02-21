import { IsInt, IsNotEmpty, IsString, Min } from 'class-validator';
import { AddSessionPartRequest } from '../../proto/bst/v1/session_part_service';

export class AddSessionPartDto implements AddSessionPartRequest {
  @IsInt()
  @IsNotEmpty()
  partId: number;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsInt()
  @Min(0)
  displayOrder: number;

  @IsInt()
  @Min(1)
  maxEntry: number;

  @IsInt()
  @Min(0)
  transitionCost: number;
}
