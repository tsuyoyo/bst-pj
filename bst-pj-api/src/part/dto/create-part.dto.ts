import { IsNotEmpty, IsString } from 'class-validator';
import { CreatePartRequest } from '../../proto/bst/v1/part_service';

export class CreatePartDto implements CreatePartRequest {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  description: string;
}
