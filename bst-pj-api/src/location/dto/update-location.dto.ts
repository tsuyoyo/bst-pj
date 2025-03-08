import { IsString, IsNumber, IsOptional } from 'class-validator';
import { UpdateLocationRequest } from '../../proto/bst/v1/location_service';

export class UpdateLocationDto
  implements Omit<UpdateLocationRequest, 'locationId'>
{
  @IsOptional()
  @IsString()
  name?: string;

  @IsOptional()
  @IsString()
  googleMapsUrl?: string;

  @IsOptional()
  @IsString()
  additionalInfo?: string;

  @IsOptional()
  @IsNumber()
  prefectureId?: number;
}
