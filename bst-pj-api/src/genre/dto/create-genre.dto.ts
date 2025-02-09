import { IsNotEmpty, IsString } from 'class-validator';
import { CreateGenreRequest } from '../../proto/bst/v1/genre_service';

export class CreateGenreDto implements CreateGenreRequest {
  @IsNotEmpty()
  @IsString()
  name: string;
}
