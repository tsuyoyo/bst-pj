import { IsArray, IsInt, IsNotEmpty } from 'class-validator';

export class UpdateSessionSongDto {
  @IsArray()
  @IsNotEmpty()
  @IsInt({ each: true })
  mandatoryPartIds: number[];
}
