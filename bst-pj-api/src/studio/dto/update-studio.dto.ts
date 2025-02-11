import { IsString, IsOptional, IsNumber } from 'class-validator';
import { UpdateStudioRequest } from '../../proto/bst/v1/studio_service';

export class UpdateStudioDto
  implements Omit<UpdateStudioRequest, 'studioId' | 'location'>
{
  @IsOptional()
  @IsString()
  name?: string;

  @IsOptional()
  @IsString()
  description?: string;

  @IsOptional()
  @IsNumber()
  locationId?: number;
}
