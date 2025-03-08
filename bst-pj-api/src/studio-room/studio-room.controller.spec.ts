/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { StudioRoomController } from './studio-room.controller';
import { StudioRoomService } from './studio-room.service';
import { CreateStudioRoomDto } from './dto/create-studio-room.dto';
import { CreateStudioRoomInfoDto } from './dto/create-studio-room-info.dto';
import { UpdateStudioRoomRequest } from '../proto/bst/v1/studio_room_service';
import { StudioRoom } from '../entities/studio-room.entity';
import {
  ListStudioRoomsResponse,
  CreateStudioRoomResponse,
  GetStudioRoomResponse,
  ListStudioRoomInfosResponse,
  CreateStudioRoomInfoResponse,
  DeleteStudioRoomResponse,
  DeleteStudioRoomInfoResponse,
} from '../proto/bst/v1/studio_room_service';
import { User } from '../entities/user.entity';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

// JwtAuthGuardのモック
jest.mock('../auth/jwt-auth.guard', () => {
  return {
    JwtAuthGuard: jest.fn().mockImplementation(() => {
      return {
        canActivate: jest.fn().mockReturnValue(true),
      };
    }),
  };
});

describe('StudioRoomController', () => {
  let controller: StudioRoomController;
  let service: StudioRoomService;

  const mockStudioRoomService = {
    getStudioRooms: jest.fn(),
    getStudioRoom: jest.fn(),
    getRoomInfos: jest.fn(),
    createStudioRoom: jest.fn(),
    createStudioRoomInfo: jest.fn(),
    updateStudioRoom: jest.fn(),
    updateStudioRoomInfo: jest.fn(),
    deleteStudioRoom: jest.fn(),
    deleteStudioRoomInfo: jest.fn(),
  };

  const mockUser: User = {
    id: 1,
    email: 'test@example.com',
    password: 'password',
    name: 'Test User',
    createdAt: new Date(),
    updatedAt: new Date(),
    externalId: null,
    externalService: null,
    iconUrl: null,
    profilePictureUrl: null,
  };

  const mockRequest = {
    user: mockUser,
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StudioRoomController],
      providers: [
        {
          provide: StudioRoomService,
          useValue: mockStudioRoomService,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: jest.fn().mockReturnValue(true) })
      .compile();

    controller = module.get<StudioRoomController>(StudioRoomController);
    service = module.get<StudioRoomService>(StudioRoomService);
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('getStudioRooms', () => {
    it('should return a list of studio rooms', async () => {
      const result: ListStudioRoomsResponse = { rooms: [] };
      jest.spyOn(service, 'getStudioRooms').mockResolvedValue(result);

      expect(await controller.getStudioRooms(1)).toBe(result);
      expect(service.getStudioRooms).toHaveBeenCalledWith(1);
    });
  });

  describe('getStudioRoom', () => {
    it('should return a studio room', async () => {
      const result: GetStudioRoomResponse = { room: new StudioRoom() };
      jest.spyOn(service, 'getStudioRoom').mockResolvedValue(result);

      expect(await controller.getStudioRoom(1, 1)).toBe(result);
      expect(service.getStudioRoom).toHaveBeenCalledWith(1, 1);
    });
  });

  describe('getRoomInfosByStudioId', () => {
    it('should return room infos', async () => {
      const result: ListStudioRoomInfosResponse = { infos: [] };
      jest.spyOn(service, 'getRoomInfos').mockResolvedValue(result);

      expect(await controller.getRoomInfosByStudioId(1, 1)).toBe(result);
      expect(service.getRoomInfos).toHaveBeenCalledWith(1, 1);
    });
  });

  describe('createStudioRoom', () => {
    it('should create a studio room', async () => {
      const createStudioRoomDto: CreateStudioRoomDto = {
        name: 'Room 1',
        capacity: 10,
        price: 100,
        size: 0,
      };
      const result: CreateStudioRoomResponse = { room: new StudioRoom() };
      jest.spyOn(service, 'createStudioRoom').mockResolvedValue(result);

      expect(
        await controller.createStudioRoom(1, createStudioRoomDto, mockRequest),
      ).toBe(result);
      expect(service.createStudioRoom).toHaveBeenCalledWith(
        1,
        mockUser,
        createStudioRoomDto,
      );
    });
  });

  describe('createStudioRoomInfo', () => {
    it('should create a studio room info', async () => {
      const createStudioRoomInfoDto: CreateStudioRoomInfoDto = {
        typeId: 1,
        key: 'Key A',
        value: 'Value A',
      };
      const result: CreateStudioRoomInfoResponse = {
        info: {
          id: 1,
          type: {
            id: 1,
            name: 'Equipment',
          },
          key: 'Key A',
          value: 'Value A',
        },
      };
      jest.spyOn(service, 'createStudioRoomInfo').mockResolvedValue(result);

      expect(
        await controller.createStudioRoomInfo(
          1,
          1,
          mockRequest,
          createStudioRoomInfoDto,
        ),
      ).toBe(result);
      expect(service.createStudioRoomInfo).toHaveBeenCalledWith(
        1,
        1,
        mockUser,
        createStudioRoomInfoDto,
      );
    });
  });

  describe('updateStudioRoom', () => {
    it('should update a studio room', async () => {
      const updateDto: UpdateStudioRoomRequest = {
        name: 'Updated Room',
        capacity: 20,
        price: 150,
        size: 50,
      };
      const result: StudioRoom = new StudioRoom();
      jest.spyOn(service, 'updateStudioRoom').mockResolvedValue(result);

      expect(
        await controller.updateStudioRoom(1, 1, mockRequest, updateDto),
      ).toBe(result);
      expect(service.updateStudioRoom).toHaveBeenCalledWith(
        1,
        1,
        mockUser,
        updateDto,
      );
    });
  });

  describe('deleteStudioRoom', () => {
    it('should delete a studio room', async () => {
      const result: DeleteStudioRoomResponse = { success: true };
      jest.spyOn(service, 'deleteStudioRoom').mockResolvedValue(result);

      expect(await controller.deleteStudioRoom(1, 1)).toBe(result);
      expect(service.deleteStudioRoom).toHaveBeenCalledWith(1, 1);
    });
  });

  describe('deleteStudioRoomInfo', () => {
    it('should delete a studio room info', async () => {
      const result: DeleteStudioRoomInfoResponse = { success: true };
      jest.spyOn(service, 'deleteStudioRoomInfo').mockResolvedValue(result);

      expect(await controller.deleteStudioRoomInfo(1, 1, 1)).toBe(result);
      expect(service.deleteStudioRoomInfo).toHaveBeenCalledWith(1, 1, 1);
    });
  });
});
