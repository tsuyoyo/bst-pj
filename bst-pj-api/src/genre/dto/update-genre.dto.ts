import { IsNotEmpty } from 'class-validator';
import { UpdateGenreRequest } from '../../proto/bst/v1/genre_service';

export class UpdateGenreDto implements UpdateGenreRequest {
  @IsNotEmpty()
  name: string;
}
