/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { AreaController } from './area.controller';
import { AreaService } from './area.service';
import { Area } from '../entities/area.entity';

describe('AreaController', () => {
  let controller: AreaController;
  let service: AreaService;

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
  ];

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [AreaController],
      providers: [
        {
          provide: AreaService,
          useValue: {
            getAllAreas: jest.fn().mockReturnValue(mockAreas),
            getAreaById: jest.fn().mockImplementation((id: number) => {
              return mockAreas.find((a) => a.id === id);
            }),
          },
        },
      ],
    }).compile();

    controller = module.get<AreaController>(AreaController);
    service = module.get<AreaService>(AreaService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('getAllAreas', () => {
    it('should return all areas', async () => {
      const result = await controller.getAllAreas();
      expect(result).toEqual({ areas: mockAreas });
      expect(service.getAllAreas).toHaveBeenCalled();
    });
  });

  describe('getAreaById', () => {
    it('should return an area by id', async () => {
      const result = await controller.getAreaById(1);
      expect(result).toEqual({ area: mockAreas[0] });
      expect(service.getAreaById).toHaveBeenCalledWith(1);
    });
  });
});
