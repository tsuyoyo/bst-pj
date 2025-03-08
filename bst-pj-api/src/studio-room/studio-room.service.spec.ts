import { Test, TestingModule } from '@nestjs/testing';
import { StudioRoomService } from './studio-room.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { StudioRoom } from '../entities/studio-room.entity';
import { StudioRoomInfo } from '../entities/studio-room-info.entity';
import { StudioRoomInfoType } from '../entities/studio-room-info-type.entity';
import { Repository, DeleteResult } from 'typeorm';
import { NotFoundException } from '@nestjs/common';
import { Studio } from '../entities/studio.entity';
import { CreateStudioRoomDto } from './dto/create-studio-room.dto';
import { UpdateStudioRoomDto } from './dto/update-studio-room.dto';
import { User } from '../entities/user.entity';

describe('StudioRoomService', () => {
  let service: StudioRoomService;
  let studioRoomRepository: Repository<StudioRoom>;
  let studioRoomInfoRepository: Repository<StudioRoomInfo>;

  const mockStudioRoomRepository = {
    findOne: jest.fn(),
    find: jest.fn(),
    create: jest.fn(),
    save: jest.fn(),
    delete: jest.fn(),
  };

  const mockStudioRoomInfoRepository = {
    findOne: jest.fn(),
    find: jest.fn(),
    create: jest.fn(),
    save: jest.fn(),
    delete: jest.fn(),
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

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        StudioRoomService,
        {
          provide: getRepositoryToken(StudioRoom),
          useValue: mockStudioRoomRepository,
        },
        {
          provide: getRepositoryToken(StudioRoomInfo),
          useValue: mockStudioRoomInfoRepository,
        },
      ],
    }).compile();

    service = module.get<StudioRoomService>(StudioRoomService);
    studioRoomRepository = module.get<Repository<StudioRoom>>(
      getRepositoryToken(StudioRoom),
    );
    studioRoomInfoRepository = module.get<Repository<StudioRoomInfo>>(
      getRepositoryToken(StudioRoomInfo),
    );
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('createStudioRoom', () => {
    it('should create a studio room', async () => {
      const createStudioRoomDto: CreateStudioRoomDto = {
        name: 'Room 1',
        capacity: 10,
        price: 100,
        size: 0,
      };

      const savedRoom: StudioRoom = {
        id: 1,
        studioId: 1,
        size: createStudioRoomDto.size,
        createdAt: new Date(),
        updatedAt: new Date(),
        infos: [],
        name: createStudioRoomDto.name,
        capacity: createStudioRoomDto.capacity,
        price: createStudioRoomDto.price,
        updatedUserId: 1,
        studio: new Studio(),
      };

      jest.spyOn(studioRoomRepository, 'create').mockReturnValue(savedRoom);
      jest.spyOn(studioRoomRepository, 'save').mockResolvedValue(savedRoom);

      const result = await service.createStudioRoom(
        1,
        mockUser,
        createStudioRoomDto,
      );
      expect(result.room).toEqual(service.mapToProtoStudioRoom(savedRoom));
    });
  });

  describe('getStudioRoom', () => {
    it('should return a studio room', async () => {
      const studioRoom: StudioRoom = {
        id: 1,
        studioId: 1,
        size: 0,
        createdAt: new Date(),
        updatedAt: new Date(),
        infos: [],
        name: 'Room 1',
        capacity: 10,
        price: 100,
        updatedUserId: 1,
        studio: new Studio(),
      };
      const expectedResult = service.mapToProtoStudioRoom(studioRoom);
      jest.spyOn(studioRoomRepository, 'findOne').mockResolvedValue(studioRoom);

      const result = await service.getStudioRoom(1, 1);
      expect(result.room).toEqual(expectedResult);
    });

    it('should throw NotFoundException if studio room not found', async () => {
      jest.spyOn(studioRoomRepository, 'findOne').mockResolvedValue(null);

      await expect(service.getStudioRoom(1, 999)).rejects.toThrow(
        NotFoundException,
      );
    });
  });

  describe('getStudioRooms', () => {
    it('should return a list of studio rooms', async () => {
      const studioRooms: StudioRoom[] = [
        {
          id: 1,
          name: 'Room 1',
          capacity: 10,
          price: 100,
          size: 0,
          createdAt: new Date(),
          updatedAt: new Date(),
          studioId: 1,
          studio: new Studio(),
          infos: [],
          updatedUserId: 1,
        },
      ];

      jest.spyOn(studioRoomRepository, 'find').mockResolvedValue(studioRooms);

      const result = await service.getStudioRooms(1);
      expect(result.rooms.length).toBe(studioRooms.length);
      studioRooms.forEach((room, index) => {
        expect(result.rooms[index]).toEqual(service.mapToProtoStudioRoom(room));
      });
    });
  });

  describe('updateStudioRoom', () => {
    it('should update a studio room', async () => {
      const studioRoom: StudioRoom = {
        id: 1,
        name: 'Room 1',
        capacity: 10,
        price: 100,
        studioId: 1,
        size: 0,
        createdAt: new Date(),
        updatedAt: new Date(),
        infos: [],
        updatedUserId: 1,
        studio: new Studio(),
      };

      const updateDto: UpdateStudioRoomDto = {
        name: 'Updated Room',
        capacity: 20,
        price: 150,
        size: 50,
      };

      jest.spyOn(studioRoomRepository, 'findOne').mockResolvedValue(studioRoom);
      jest
        .spyOn(studioRoomRepository, 'save')
        .mockResolvedValue({ ...studioRoom, ...updateDto });

      const result = await service.updateStudioRoom(1, 1, mockUser, updateDto);
      expect(result.name).toEqual('Updated Room');
    });

    it('should throw NotFoundException if studio room not found', async () => {
      jest.spyOn(studioRoomRepository, 'findOne').mockResolvedValue(null);

      const updateDto: UpdateStudioRoomDto = {
        name: 'Updated Room',
        capacity: 20,
        price: 150,
        size: 50,
      };

      await expect(
        service.updateStudioRoom(1, 999, mockUser, updateDto),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteStudioRoom', () => {
    it('should delete a studio room', async () => {
      const mockDeleteResult: DeleteResult = { raw: {}, affected: 1 };
      jest
        .spyOn(studioRoomRepository, 'delete')
        .mockResolvedValue(mockDeleteResult);

      const result = await service.deleteStudioRoom(1, 1);
      expect(result.success).toBe(true);
    });

    it('should return success false if room not found', async () => {
      const mockDeleteResult: DeleteResult = { raw: {}, affected: 0 };
      jest
        .spyOn(studioRoomRepository, 'delete')
        .mockResolvedValue(mockDeleteResult);

      const result = await service.deleteStudioRoom(1, 999);
      expect(result.success).toBe(false);
    });
  });

  describe('createStudioRoomInfo', () => {
    it('should create a studio room info', async () => {
      const createStudioRoomInfoDto = {
        typeId: 1,
        key: 'Key A',
        value: 'Value A',
      };

      const infoType = new StudioRoomInfoType();
      infoType.id = 1;
      infoType.name = 'Equipment';

      const savedRoomInfo: StudioRoomInfo = {
        id: 1,
        studioId: 1,
        studioRoomId: 1,
        typeId: createStudioRoomInfoDto.typeId,
        key: createStudioRoomInfoDto.key,
        value: createStudioRoomInfoDto.value,
        createdAt: new Date(),
        updatedAt: new Date(),
        updatedUserId: 1,
        studioRoom: new StudioRoom(),
        type: infoType,
      };

      jest
        .spyOn(studioRoomInfoRepository, 'findOne')
        .mockResolvedValue(savedRoomInfo);
      jest
        .spyOn(studioRoomInfoRepository, 'save')
        .mockResolvedValue(savedRoomInfo);

      const result = await service.createStudioRoomInfo(
        1,
        1,
        mockUser,
        createStudioRoomInfoDto,
      );
      expect(result.info).toEqual(
        service.mapToProtoStudioRoomInfo(savedRoomInfo),
      );
    });
  });

  describe('deleteStudioRoomInfo', () => {
    it('should delete a studio room info', async () => {
      const mockDeleteResult: DeleteResult = { raw: {}, affected: 1 };
      jest
        .spyOn(studioRoomInfoRepository, 'delete')
        .mockResolvedValue(mockDeleteResult);

      const result = await service.deleteStudioRoomInfo(1, 1, 1);
      expect(result.success).toBe(true);
    });

    it('should return success false if room info not found', async () => {
      const mockDeleteResult: DeleteResult = { raw: {}, affected: 0 };
      jest
        .spyOn(studioRoomInfoRepository, 'delete')
        .mockResolvedValue(mockDeleteResult);

      const result = await service.deleteStudioRoomInfo(1, 1, 999);
      expect(result.success).toBe(false);
    });
  });
});
