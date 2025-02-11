import { IsNumber, IsOptional, IsString } from 'class-validator';
import { Transform } from 'class-transformer';
import { ListReactionTypesRequest } from '../../proto/bst/v1/reaction_service';

export class ListReactionTypesDto implements ListReactionTypesRequest {
  @IsOptional()
  @IsNumber()
  @Transform(({ value }) => parseInt(value, 10) || 10)
  pageSize: number = 10;

  @IsOptional()
  @IsString()
  pageToken: string = '';
}
