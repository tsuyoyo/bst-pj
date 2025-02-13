import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Rating } from '../entities/rating.entity';
import { CreateRatingDto } from './dto/create-rating.dto';
import { UpdateRatingDto } from './dto/update-rating.dto';
import { RatingTargetType } from '../entities/types/rating-target-type.enum';

@Injectable()
export class RatingService {
  constructor(
    @InjectRepository(Rating)
    private readonly ratingRepository: Repository<Rating>,
  ) {}

  async createRating(createRatingDto: CreateRatingDto, userId: number) {
    const rating = this.ratingRepository.create({
      ...createRatingDto,
      userId,
    });
    await this.ratingRepository.save(rating);
    return rating;
  }

  async listRatings(params: {
    targetType?: RatingTargetType;
    targetId?: number;
    userId?: number;
    page: number;
    pageSize: number;
  }) {
    const { targetType, targetId, userId, page, pageSize } = params;
    const [ratings, totalCount] = await this.ratingRepository.findAndCount({
      where: {
        targetType,
        targetId,
        userId,
      },
      take: pageSize,
      skip: page * pageSize,
    });
    return {
      ratings,
      totalCount,
      currentPage: page,
      totalPages: Math.ceil(totalCount / pageSize),
    };
  }

  async updateRating(id: number, updateRatingDto: UpdateRatingDto) {
    const rating = await this.ratingRepository.findOne({ where: { id } });
    if (!rating) {
      throw new NotFoundException('Rating not found');
    }
    Object.assign(rating, updateRatingDto);
    await this.ratingRepository.save(rating);
    return rating;
  }

  async deleteRating(id: number) {
    const rating = await this.ratingRepository.findOne({ where: { id } });
    if (!rating) {
      throw new NotFoundException('Rating not found');
    }
    await this.ratingRepository.remove(rating);
  }
}
