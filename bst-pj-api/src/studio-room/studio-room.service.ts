import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateStudioRoomDto } from './dto/create-studio-room.dto';
import { StudioRoom } from '../entities/studio-room.entity';
import { StudioRoomInfo } from '../entities/studio-room-info.entity';
import {
  StudioRoomInfo as ProtoStudioRoomInfo,
  StudioRoom as ProtoStudioRoom,
} from '../proto/bst/v1/location';
import {
  ListStudioRoomInfosResponse,
  GetStudioRoomResponse,
  ListStudioRoomsResponse,
  CreateStudioRoomResponse,
  DeleteStudioRoomResponse,
  DeleteStudioRoomInfoResponse,
  CreateStudioRoomInfoResponse,
  UpdateStudioRoomInfoResponse,
} from 'src/proto/bst/v1/studio_room_service';
import { UpdateStudioRoomDto } from './dto/update-studio-room.dto';
import { CreateStudioRoomInfoDto } from './dto/create-studio-room-info.dto';
import { UpdateStudioRoomInfoDto } from './dto/update-studio-room-info.dto';
import { User } from 'src/entities/user.entity';
@Injectable()
export class StudioRoomService {
  constructor(
    @InjectRepository(StudioRoom)
    private readonly studioRoomRepository: Repository<StudioRoom>,
    @InjectRepository(StudioRoomInfo)
    private readonly studioRoomInfoRepository: Repository<StudioRoomInfo>,
  ) {}

  mapToProtoStudioRoom(studioRoom: StudioRoom): ProtoStudioRoom {
    return {
      id: studioRoom.id,
      name: studioRoom.name,
      capacity: studioRoom.capacity,
      price: studioRoom.price,
      infos: studioRoom.infos,
      size: studioRoom.size,
    };
  }

  mapToProtoStudioRoomInfo(roomInfo: StudioRoomInfo): ProtoStudioRoomInfo {
    return {
      id: roomInfo.id,
      type: {
        id: roomInfo.typeId,
        name: roomInfo.type?.name || '',
      },
      key: roomInfo.key,
      value: roomInfo.value,
    };
  }

  async createStudioRoom(
    studioId: number,
    user: User,
    createStudioRoomDto: CreateStudioRoomDto,
  ): Promise<CreateStudioRoomResponse> {
    const studioRoom = this.studioRoomRepository.create({
      studioId: studioId,
      name: createStudioRoomDto.name,
      capacity: createStudioRoomDto.capacity,
      price: createStudioRoomDto.price,
      size: createStudioRoomDto.size,
      updatedUserId: user.id,
    });
    const savedStudioRoom = await this.studioRoomRepository.save(studioRoom);

    return {
      room: this.mapToProtoStudioRoom(savedStudioRoom),
    };
  }

  async getRoomInfos(
    studioId: number,
    roomId: number,
  ): Promise<ListStudioRoomInfosResponse> {
    const roomInfos = await this.studioRoomInfoRepository.find({
      where: { studioRoomId: roomId, studioId: studioId },
      relations: ['type'],
    });
    return {
      infos: roomInfos.map((roomInfo) =>
        this.mapToProtoStudioRoomInfo(roomInfo),
      ),
    };
  }

  async getStudioRoom(
    studioId: number,
    roomId: number,
  ): Promise<GetStudioRoomResponse> {
    const studioRoom = await this.studioRoomRepository.findOne({
      where: { id: roomId, studioId: studioId },
      relations: ['infos', 'infos.type'],
    });
    if (!studioRoom) {
      throw new NotFoundException('Studio room not found');
    }
    return { room: this.mapToProtoStudioRoom(studioRoom) };
  }

  async getStudioRooms(studioId: number): Promise<ListStudioRoomsResponse> {
    const studioRooms = await this.studioRoomRepository.find({
      where: { studioId: studioId },
      relations: ['infos', 'infos.type'],
    });

    return {
      rooms: studioRooms.map((room) => this.mapToProtoStudioRoom(room)),
    };
  }

  async updateStudioRoom(
    studioId: number,
    roomId: number,
    user: User,
    updateStudioRoomDto: UpdateStudioRoomDto,
  ): Promise<StudioRoom> {
    const studioRoom = await this.studioRoomRepository.findOne({
      where: { id: roomId, studioId: studioId },
    });
    if (!studioRoom) {
      throw new NotFoundException('Studio room not found');
    }

    studioRoom.name = updateStudioRoomDto.name;
    studioRoom.capacity = updateStudioRoomDto.capacity;
    studioRoom.price = updateStudioRoomDto.price;
    studioRoom.size = updateStudioRoomDto.size;
    studioRoom.updatedUserId = user.id;
    return await this.studioRoomRepository.save(studioRoom);
  }

  async updateStudioRoomInfo(
    studioId: number,
    roomId: number,
    infoId: number,
    user: User,
    updateStudioRoomInfoDto: UpdateStudioRoomInfoDto,
  ): Promise<UpdateStudioRoomInfoResponse> {
    const roomInfo = await this.studioRoomInfoRepository.findOne({
      where: { id: infoId, studioRoomId: roomId, studioId: studioId },
      relations: ['type'],
    });
    if (!roomInfo) {
      throw new NotFoundException('Room info not found');
    }
    roomInfo.typeId = updateStudioRoomInfoDto.typeId;
    roomInfo.key = updateStudioRoomInfoDto.key;
    roomInfo.value = updateStudioRoomInfoDto.value;
    roomInfo.updatedUserId = user.id;
    const savedRoomInfo = await this.studioRoomInfoRepository.save(roomInfo);
    return {
      info: this.mapToProtoStudioRoomInfo(savedRoomInfo),
    };
  }

  async createStudioRoomInfo(
    studioId: number,
    roomId: number,
    user: User,
    createStudioRoomInfoDto: CreateStudioRoomInfoDto,
  ): Promise<CreateStudioRoomInfoResponse> {
    const roomInfo = {
      studioId: studioId,
      studioRoomId: roomId,
      typeId: createStudioRoomInfoDto.typeId,
      key: createStudioRoomInfoDto.key,
      value: createStudioRoomInfoDto.value,
      updatedUserId: user.id,
    };
    const savedRoomInfo = await this.studioRoomInfoRepository.save(roomInfo);

    // 保存後にtypeの情報を取得するために再度読み込む
    const roomInfoWithType = await this.studioRoomInfoRepository.findOne({
      where: { id: savedRoomInfo.id },
      relations: ['type'],
    });

    return {
      info: this.mapToProtoStudioRoomInfo(roomInfoWithType || savedRoomInfo),
    };
  }

  async deleteStudioRoom(
    studioId: number,
    roomId: number,
  ): Promise<DeleteStudioRoomResponse> {
    const result = await this.studioRoomRepository.delete({
      id: roomId,
      studioId: studioId,
    });
    return { success: result.affected ? result.affected > 0 : false };
  }

  async deleteStudioRoomInfo(
    studioId: number,
    roomId: number,
    infoId: number,
  ): Promise<DeleteStudioRoomInfoResponse> {
    const result = await this.studioRoomInfoRepository.delete({
      id: infoId,
      studioRoomId: roomId,
      studioId: studioId,
    });
    return { success: result.affected ? result.affected > 0 : false };
  }
}
