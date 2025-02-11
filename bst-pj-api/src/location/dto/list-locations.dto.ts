import { IsNumber, IsOptional, IsString } from 'class-validator';
import { ListLocationsRequest } from '../../proto/bst/v1/location_service';
import { Transform } from 'class-transformer';

export class ListLocationsDto implements Partial<ListLocationsRequest> {
  @IsOptional()
  @IsNumber()
  @Transform(({ value }) => parseInt(value, 10))
  pageSize?: number;

  @IsOptional()
  @IsString()
  pageToken?: string;

  @IsOptional()
  @IsNumber()
  @Transform(({ value }) => parseInt(value, 10))
  areaId?: number;
}
