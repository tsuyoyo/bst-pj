import { IsNumber, IsOptional, IsDate } from 'class-validator';
import { Type } from 'class-transformer';
import { UpdatePartyRequest } from '../../proto/bst/v1/party_service';

export class UpdatePartyDto implements UpdatePartyRequest {
  @IsNumber()
  @IsOptional()
  locationId: number;

  @IsNumber()
  @IsOptional()
  fee: number;

  @IsDate()
  @Type(() => Date)
  @IsOptional()
  startAt: Date;

  @IsDate()
  @Type(() => Date)
  @IsOptional()
  endAt: Date;
}
