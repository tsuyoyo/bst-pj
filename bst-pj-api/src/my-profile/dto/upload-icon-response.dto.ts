import { IsNotEmpty, IsString, IsUrl } from 'class-validator';

export class UploadIconResponseDto {
  @IsNotEmpty()
  @IsString()
  @IsUrl()
  iconUrl: string;

  @IsNotEmpty()
  @IsString()
  message: string;
}
