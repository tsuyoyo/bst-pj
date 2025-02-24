import { IsInt, IsNotEmpty, IsString } from 'class-validator';
import { AddSongEntryRequest } from '../../proto/bst/v1/session_song_entry_service';

export class AddSessionSongEntryDto implements AddSongEntryRequest {
  @IsInt()
  @IsNotEmpty()
  sessionPartId: number;

  @IsString()
  comment: string;
}
