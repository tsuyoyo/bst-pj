import { IsNotEmpty, IsString, IsNumber, IsOptional } from 'class-validator';
import { CreateLocationRequest } from '../../proto/bst/v1/location_service';

export class CreateLocationDto
  implements Omit<CreateLocationRequest, 'googleMapsUrl' | 'additionalInfo'>
{
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsOptional()
  @IsString()
  googleMapsUrl?: string;

  @IsOptional()
  @IsString()
  additionalInfo?: string;

  @IsNotEmpty()
  @IsNumber()
  areaId: number;
}
