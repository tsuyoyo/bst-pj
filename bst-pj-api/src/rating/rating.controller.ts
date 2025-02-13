import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Query,
  UsePipes,
  ValidationPipe,
} from '@nestjs/common';
import { CreateRatingDto } from './dto/create-rating.dto';
import { UpdateRatingDto } from './dto/update-rating.dto';
import { RatingService } from './rating.service';
import { RatingTargetType } from '../entities/types/rating-target-type.enum';

@Controller('ratings')
export class RatingController {
  constructor(private readonly ratingService: RatingService) {}

  @Post()
  @UsePipes(new ValidationPipe({ transform: true }))
  async createRating(@Body() createRatingDto: CreateRatingDto) {
    // ユーザーIDは通常、認証コンテキストから取得、ここでは固定値として1を使用
    const userId = 1;
    const rating = await this.ratingService.createRating(
      createRatingDto,
      userId,
    );
    return rating;
  }

  @Get()
  async listRatings(
    @Query('targetType') targetType: string,
    @Query('targetId', ParseIntPipe) targetId: number,
    @Query('userId', ParseIntPipe) userId: number,
    @Query('page', ParseIntPipe) page: number,
    @Query('pageSize', ParseIntPipe) pageSize: number,
  ) {
    const ratings = await this.ratingService.listRatings({
      targetType: targetType as RatingTargetType,
      targetId,
      userId,
      page,
      pageSize,
    });
    return ratings;
  }

  @Put(':id')
  @UsePipes(new ValidationPipe({ transform: true }))
  async updateRating(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateRatingDto: UpdateRatingDto,
  ) {
    const rating = await this.ratingService.updateRating(id, updateRatingDto);
    return rating;
  }

  @Delete(':id')
  async deleteRating(@Param('id', ParseIntPipe) id: number) {
    await this.ratingService.deleteRating(id);
    return { success: true };
  }
}
