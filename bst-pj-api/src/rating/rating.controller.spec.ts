/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { RatingController } from './rating.controller';
import { RatingService } from './rating.service';
import { RatingTargetType } from '../entities/types/rating-target-type.enum';

describe('RatingController', () => {
  let ratingController: RatingController;
  let ratingService: RatingService;

  const mockRating = {
    id: 1,
    targetType: RatingTargetType.SONG as RatingTargetType,
    targetId: 100,
    rating: 5,
    comment: 'Excellent',
    userId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockRatingService = {
    createRating: jest.fn().mockImplementation((dto, userId) =>
      Promise.resolve({
        ...mockRating,
        ...dto,
        userId: (userId as number) || 1,
      }),
    ),
    listRatings: jest.fn().mockImplementation((params) =>
      Promise.resolve({
        ratings: [mockRating],
        totalCount: 1,
        currentPage: (params as { page: number }).page,
        totalPages: 1,
      }),
    ),
    updateRating: jest.fn().mockImplementation((id, dto) =>
      Promise.resolve({
        ...mockRating,
        ...dto,
        id: (id as number) || 1,
      }),
    ),
    deleteRating: jest.fn().mockImplementation(() => Promise.resolve()),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [RatingController],
      providers: [{ provide: RatingService, useValue: mockRatingService }],
    }).compile();

    ratingController = module.get<RatingController>(RatingController);
    ratingService = module.get<RatingService>(RatingService);
  });

  it('should create a rating', async () => {
    const createDto = {
      targetType: RatingTargetType.SONG as RatingTargetType,
      targetId: 100,
      rating: 5,
      comment: 'Excellent',
    };
    const result = await ratingController.createRating(createDto);
    expect(ratingService.createRating).toHaveBeenCalledWith(createDto, 1);
    expect(result).toEqual(expect.objectContaining({ id: 1 }));
  });

  it('should list ratings', async () => {
    const targetType = RatingTargetType.SONG as RatingTargetType;
    const targetId = 100;
    const userId = 1;
    const page = 0;
    const pageSize = 10;
    const result = await ratingController.listRatings(
      targetType,
      targetId,
      userId,
      page,
      pageSize,
    );
    expect(ratingService.listRatings).toHaveBeenCalledWith({
      targetType,
      targetId,
      userId,
      page,
      pageSize,
    });
    expect(result).toHaveProperty('ratings');
  });

  it('should update a rating', async () => {
    const updateDto = { rating: 4, comment: 'Good' };
    const result = await ratingController.updateRating(1, updateDto);
    expect(ratingService.updateRating).toHaveBeenCalledWith(1, updateDto);
    expect(result).toEqual(expect.objectContaining({ id: 1 }));
  });

  it('should delete a rating', async () => {
    const result = await ratingController.deleteRating(1);
    expect(ratingService.deleteRating).toHaveBeenCalledWith(1);
    expect(result).toEqual({ success: true });
  });
});
