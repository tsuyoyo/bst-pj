import {
  IsNotEmpty,
  IsString,
  IsUrl,
  IsOptional,
  IsArray,
  IsNumber,
} from 'class-validator';
import { UpdateArtistRequest } from '../../proto/bst/v1/artist_service';

export class UpdateArtistDto implements Omit<UpdateArtistRequest, 'artistId'> {
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
