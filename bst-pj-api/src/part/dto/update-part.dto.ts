import { IsString, IsOptional } from 'class-validator';
import { UpdatePartRequest } from '../../proto/bst/v1/part_service';

export class UpdatePartDto implements Omit<UpdatePartRequest, 'partId'> {
  @IsOptional()
  @IsString()
  name?: string;

  @IsOptional()
  @IsString()
  description?: string;
}
