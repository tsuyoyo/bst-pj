import { IsNotEmpty, IsNumber, IsOptional, IsString } from 'class-validator';
import { Transform } from 'class-transformer';
import { ListReactionsRequest } from '../../proto/bst/v1/reaction_service';

export class ListReactionsDto implements ListReactionsRequest {
  @IsOptional()
  @IsNumber()
  @Transform(({ value }) => parseInt(value, 10) || 10)
  pageSize: number = 10;

  @IsOptional()
  @IsString()
  pageToken: string = '';

  @IsNotEmpty()
  @IsNumber()
  targetId: number;
}
