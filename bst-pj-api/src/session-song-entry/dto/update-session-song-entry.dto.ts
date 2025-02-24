import { IsString } from 'class-validator';
import { UpdateSongEntryRequest } from '../../proto/bst/v1/session_song_entry_service';

export class UpdateSessionSongEntryDto implements UpdateSongEntryRequest {
  @IsString()
  comment: string;
}
