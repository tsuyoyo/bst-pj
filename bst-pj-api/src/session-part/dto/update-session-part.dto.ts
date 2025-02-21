import { IsInt, IsNotEmpty, IsNumber, IsString, Min } from 'class-validator';
import { UpdateSessionPartRequest } from '../../proto/bst/v1/session_part_service';

export class UpdateSessionPartDto implements UpdateSessionPartRequest {
  @IsNumber()
  @IsNotEmpty()
  partId: number;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsInt()
  @Min(0)
  displayOrder: number;

  @IsInt()
  @Min(1)
  maxEntry: number;
}
