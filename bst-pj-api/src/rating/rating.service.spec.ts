/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { RatingService } from './rating.service';
import { Rating } from '../entities/rating.entity';
import { RatingTargetType } from '../entities/types/rating-target-type.enum';

describe('RatingService', () => {
  let service: RatingService;
  let repository: Repository<Rating>;

  const mockRating: Rating = {
    id: 1,
    targetType: RatingTargetType.SONG as RatingTargetType,
    targetId: 100,
    rating: 5,
    comment: 'Excellent',
    userId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockRepository = {
    create: jest.fn().mockReturnValue(mockRating),
    save: jest.fn().mockResolvedValue(mockRating),
    findAndCount: jest.fn().mockResolvedValue([[mockRating], 1]),
    findOne: jest.fn().mockResolvedValue(mockRating),
    remove: jest.fn().mockResolvedValue(undefined),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        RatingService,
        {
          provide: getRepositoryToken(Rating),
          useValue: mockRepository,
        },
      ],
    }).compile();

    service = module.get<RatingService>(RatingService);
    repository = module.get<Repository<Rating>>(getRepositoryToken(Rating));
  });

  describe('createRating', () => {
    it('should create a rating', async () => {
      const createDto = {
        targetType: RatingTargetType.SONG as RatingTargetType,
        targetId: 100,
        rating: 5,
        comment: 'Excellent',
      };
      const userId = 1;

      const result = await service.createRating(createDto, userId);

      expect(repository.create).toHaveBeenCalledWith({
        ...createDto,
        userId,
      });
      expect(repository.save).toHaveBeenCalled();
      expect(result).toEqual(mockRating);
    });
  });

  describe('listRatings', () => {
    it('should return a list of ratings', async () => {
      const params = {
        targetType: RatingTargetType.SONG as RatingTargetType,
        targetId: 100,
        userId: 1,
        page: 0,
        pageSize: 10,
      };

      const result = await service.listRatings(params);

      expect(repository.findAndCount).toHaveBeenCalled();
      expect(result).toEqual({
        ratings: [mockRating],
        totalCount: 1,
        currentPage: 0,
        totalPages: 1,
      });
    });
  });

  describe('updateRating', () => {
    it('should update a rating', async () => {
      const id = 1;
      const updateDto = {
        rating: 4,
        comment: 'Good',
      };

      const result = await service.updateRating(id, updateDto);

      expect(repository.findOne).toHaveBeenCalledWith({ where: { id } });
      expect(repository.save).toHaveBeenCalled();
      expect(result).toEqual(mockRating);
    });

    it('should throw NotFoundException when rating not found', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValueOnce(null);

      const id = 999;
      const updateDto = {
        rating: 4,
        comment: 'Good',
      };

      await expect(service.updateRating(id, updateDto)).rejects.toThrow();
    });
  });

  describe('deleteRating', () => {
    it('should delete a rating', async () => {
      const id = 1;

      await service.deleteRating(id);

      expect(repository.findOne).toHaveBeenCalledWith({ where: { id } });
      expect(repository.remove).toHaveBeenCalled();
    });

    it('should throw NotFoundException when rating not found', async () => {
      jest.spyOn(repository, 'findOne').mockResolvedValueOnce(null);

      const id = 999;

      await expect(service.deleteRating(id)).rejects.toThrow();
    });
  });
});
