import { IsString, IsNumber, IsOptional } from 'class-validator';
import { UpdateStudioRequest } from '../../proto/bst/v1/studio_service';

export class UpdateStudioDto implements Omit<UpdateStudioRequest, 'studioId'> {
  @IsOptional()
  @IsString()
  name?: string;

  @IsOptional()
  @IsString()
  description?: string;

  @IsOptional()
  @IsNumber()
  prefectureId?: number;

  @IsOptional()
  @IsString()
  googleMapsUrl?: string;

  @IsOptional()
  @IsString()
  additionalInfo?: string;
}
