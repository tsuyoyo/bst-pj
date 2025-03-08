import { IsNotEmpty, IsString, IsNumber, IsOptional } from 'class-validator';
import { CreateStudioRequest } from '../../proto/bst/v1/studio_service';

export class CreateStudioDto implements CreateStudioRequest {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsOptional()
  @IsString()
  description: string;

  @IsNotEmpty()
  @IsNumber()
  prefectureId: number;

  @IsString()
  googleMapsUrl: string;

  @IsOptional()
  @IsString()
  additionalInfo: string;
}
