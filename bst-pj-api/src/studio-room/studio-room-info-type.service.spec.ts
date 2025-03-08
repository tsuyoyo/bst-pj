import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { StudioRoomInfoTypeService } from './studio-room-info-type.service';
import { StudioRoomInfoType } from '../entities/studio-room-info-type.entity';

describe('StudioRoomInfoTypeService', () => {
  let service: StudioRoomInfoTypeService;
  let repository: Repository<StudioRoomInfoType>;

  const mockRepository = {
    find: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        StudioRoomInfoTypeService,
        {
          provide: getRepositoryToken(StudioRoomInfoType),
          useValue: mockRepository,
        },
      ],
    }).compile();

    service = module.get<StudioRoomInfoTypeService>(StudioRoomInfoTypeService);
    repository = module.get<Repository<StudioRoomInfoType>>(
      getRepositoryToken(StudioRoomInfoType),
    );
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('listRoomInfoTypes', () => {
    it('should return a list of room info types', async () => {
      const mockTypes: StudioRoomInfoType[] = [
        {
          id: 1,
          name: 'Equipment',
          createdAt: new Date(),
          updatedAt: new Date(),
          roomInfos: [],
        },
        {
          id: 2,
          name: 'Facility',
          createdAt: new Date(),
          updatedAt: new Date(),
          roomInfos: [],
        },
      ];

      jest.spyOn(repository, 'find').mockResolvedValue(mockTypes);

      const result = await service.listRoomInfoTypes();
      expect(result.types.length).toBe(mockTypes.length);
      expect(result.types[0].id).toBe(mockTypes[0].id);
      expect(result.types[0].name).toBe(mockTypes[0].name);
      expect(result.types[1].id).toBe(mockTypes[1].id);
      expect(result.types[1].name).toBe(mockTypes[1].name);
    });
  });
});
