import {
  IsNotEmpty,
  IsString,
  IsUrl,
  IsOptional,
  IsArray,
  IsNumber,
} from 'class-validator';
import { CreateArtistRequest } from '../../proto/bst/v1/artist_service';

export class CreateArtistDto implements CreateArtistRequest {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsString()
  description: string;

  @IsOptional()
  @IsUrl()
  website: string;

  @IsArray()
  @IsOptional()
  @IsNumber({}, { each: true })
  genreIds: number[];
}
