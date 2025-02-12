import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateSongDto {
  @IsNotEmpty()
  @IsString()
  title: string;

  @IsNotEmpty()
  @IsNumber()
  artistId: number;

  @IsNotEmpty()
  @IsString()
  description: string;
}
