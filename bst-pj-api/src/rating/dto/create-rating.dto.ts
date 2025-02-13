import {
  IsNotEmpty,
  IsNumber,
  IsString,
  IsEnum,
  MaxLength,
  Max,
  Min,
} from 'class-validator';
import { RatingTargetType } from '../../entities/types/rating-target-type.enum';

export class CreateRatingDto {
  @IsEnum(RatingTargetType)
  targetType: RatingTargetType;

  @IsNotEmpty()
  @IsNumber()
  targetId: number;

  @IsNotEmpty()
  @IsNumber()
  @Min(1, { message: 'Rating must be between 1 and 5' })
  @Max(5, { message: 'Rating must be between 1 and 5' })
  rating: number;

  @IsNotEmpty()
  @IsString()
  @MaxLength(255)
  comment: string;
}
