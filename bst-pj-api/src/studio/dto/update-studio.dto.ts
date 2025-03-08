import { IsString, IsOptional, IsNumber, IsNotEmpty } from 'class-validator';
import { UpdateStudioRequest } from '../../proto/bst/v1/studio_service';

export class UpdateStudioDto implements Omit<UpdateStudioRequest, 'studioId'> {
  @IsOptional()
  @IsString()
  name?: string;

  @IsOptional()
  @IsString()
  description?: string;

  @IsNotEmpty()
  @IsNumber()
  areaId: number;

  @IsString()
  googleMapsUrl: string;

  @IsOptional()
  @IsString()
  additionalInfo: string;
}
