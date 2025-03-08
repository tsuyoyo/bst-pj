import { IsNotEmpty, IsString, IsNumber, IsOptional } from 'class-validator';

export class CreateLocationDto {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  googleMapsUrl: string;

  @IsOptional()
  @IsString()
  additionalInfo?: string;

  @IsNotEmpty()
  @IsNumber()
  prefectureId: number;
}
