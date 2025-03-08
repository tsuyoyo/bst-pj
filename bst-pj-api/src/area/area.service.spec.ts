/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { AreaService } from './area.service';
import { Area } from '../entities/area.entity';

describe('AreaService', () => {
  let service: AreaService;
  let repository: Repository<Area>;

  const mockAreas: Area[] = [
    {
      id: 1,
      name: '東京',
      prefectureId: 13,
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      id: 2,
      name: '大阪',
      prefectureId: 27,
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      id: 3,
      name: '名古屋',
      prefectureId: 23,
      createdAt: new Date(),
      updatedAt: new Date(),
    },
  ];

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        AreaService,
        {
          provide: getRepositoryToken(Area),
          useValue: {
            find: jest.fn().mockResolvedValue(mockAreas),
          },
        },
      ],
    }).compile();

    service = module.get<AreaService>(AreaService);
    repository = module.get<Repository<Area>>(getRepositoryToken(Area));

    // キャッシュを初期化
    await service.onModuleInit();
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('getAllAreas', () => {
    it('should return all areas from cache', () => {
      const result = service.getAllAreas();
      expect(result).toEqual(mockAreas);
      // リポジトリからの取得は初期化時の1回だけ
      expect(repository.find).toHaveBeenCalledTimes(1);
    });
  });

  describe('getAreaById', () => {
    it('should return an area by id from cache', () => {
      const result = service.getAreaById(1);
      expect(result).toEqual(mockAreas[0]);
      // キャッシュから取得するのでリポジトリは呼ばれない
      expect(repository.find).toHaveBeenCalledTimes(1);
    });

    it('should return undefined if area not found', () => {
      const result = service.getAreaById(999);
      expect(result).toBeUndefined();
    });
  });

  describe('getAreaByPrefectureId', () => {
    it('should return area filtered by prefecture id', () => {
      const result = service.getAreaByPrefectureId(13);
      expect(result).toEqual(mockAreas[0]);
    });

    it('should return undefined if no area matches prefecture id', () => {
      const result = service.getAreaByPrefectureId(999);
      expect(result).toBeUndefined();
    });
  });

  describe('refreshCache', () => {
    it('should refresh the cache', async () => {
      await service.refreshCache();
      expect(repository.find).toHaveBeenCalledTimes(2);
    });
  });
});
