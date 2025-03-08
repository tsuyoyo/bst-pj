import { IsOptional, IsNumber, IsString } from 'class-validator';

export class ListStudiosDto {
  @IsOptional()
  @IsNumber()
  //   @Transform(({ value }) => parseInt(value, 10) || 10)
  pageSize: number = 10;

  @IsOptional()
  @IsString()
  pageToken?: string;

  @IsOptional()
  @IsNumber()
  //   @Transform(({ value }) => (value ? parseInt(value, 10) : undefined))
  areaId?: number;
}
