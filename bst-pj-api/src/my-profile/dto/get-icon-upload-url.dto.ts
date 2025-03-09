import { IsNotEmpty, IsString } from 'class-validator';

export class GetIconUploadUrlResponseDto {
  @IsNotEmpty()
  @IsString()
  uploadUrl: string;

  @IsNotEmpty()
  @IsString()
  publicUrl: string;
}
