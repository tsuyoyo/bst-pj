import { IsNotEmpty, IsString, MaxLength, MinLength } from 'class-validator';

export class UpdateThreadTitleDto {
  @IsNotEmpty()
  @IsString()
  @MinLength(5)
  @MaxLength(100)
  title: string;
}
