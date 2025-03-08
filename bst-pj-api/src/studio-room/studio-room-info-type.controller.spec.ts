import { Test, TestingModule } from '@nestjs/testing';
import { StudioRoomInfoTypeController } from './studio-room-info-type.controller';
import { StudioRoomInfoTypeService } from './studio-room-info-type.service';
import { ListRoomInfoTypesResponse } from '../proto/bst/v1/studio_room_service';

/* eslint-disable @typescript-eslint/unbound-method */
describe('StudioRoomInfoTypeController', () => {
  let controller: StudioRoomInfoTypeController;
  let service: StudioRoomInfoTypeService;

  const mockStudioRoomInfoTypeService = {
    listRoomInfoTypes: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StudioRoomInfoTypeController],
      providers: [
        {
          provide: StudioRoomInfoTypeService,
          useValue: mockStudioRoomInfoTypeService,
        },
      ],
    }).compile();

    controller = module.get<StudioRoomInfoTypeController>(
      StudioRoomInfoTypeController,
    );
    service = module.get<StudioRoomInfoTypeService>(StudioRoomInfoTypeService);
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('listRoomInfoTypes', () => {
    it('should return a list of room info types', async () => {
      const result: ListRoomInfoTypesResponse = {
        types: [
          { id: 1, name: 'Equipment' },
          { id: 2, name: 'Facility' },
        ],
      };
      jest.spyOn(service, 'listRoomInfoTypes').mockResolvedValue(result);

      expect(await controller.listRoomInfoTypes()).toBe(result);
      expect(service.listRoomInfoTypes).toHaveBeenCalled();
    });
  });
});
