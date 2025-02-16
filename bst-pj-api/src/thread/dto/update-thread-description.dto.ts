import { IsNotEmpty, IsString, MaxLength } from 'class-validator';

export class UpdateThreadDescriptionDto {
  @IsNotEmpty()
  @IsString()
  @MaxLength(1000)
  description: string;
}
