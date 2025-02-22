import { IsArray, IsInt, IsNotEmpty, IsNumber } from 'class-validator';
import { AddSessionSongRequest } from '../../proto/bst/v1/session_song_service';

export class RequiredPartDto {
  @IsInt()
  @IsNotEmpty()
  partId: number;

  @IsInt()
  @IsNotEmpty()
  count: number;
}

export class AddSessionSongDto implements AddSessionSongRequest {
  @IsNotEmpty()
  @IsNumber()
  songId: number;

  @IsArray()
  @IsNotEmpty()
  @IsInt({ each: true })
  mandatoryPartIds: number[];
}
