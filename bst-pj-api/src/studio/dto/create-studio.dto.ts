import { IsNotEmpty, IsString, IsNumber } from 'class-validator';
import { CreateStudioRequest } from '../../proto/bst/v1/studio_service';

export class CreateStudioDto implements Omit<CreateStudioRequest, 'location'> {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  description: string;

  @IsNotEmpty()
  @IsNumber()
  locationId: number;
}
