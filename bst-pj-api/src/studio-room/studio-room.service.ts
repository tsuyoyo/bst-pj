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
    };
  }

  mapToProtoStudioRoomInfo(roomInfo: StudioRoomInfo): ProtoStudioRoomInfo {
    return {
      id: roomInfo.id,
      type: roomInfo.type,
      key: roomInfo.key,
      value: roomInfo.value,
    };
  }

  async createStudioRoom(
    studioId: number,
    createStudioRoomDto: CreateStudioRoomDto,
  ): Promise<CreateStudioRoomResponse> {
    const studio = {
      id: studioId,
      ...createStudioRoomDto,
    };
    const studioRoom = this.studioRoomRepository.create(studio);
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
    });
    if (roomInfos.length === 0) {
      throw new NotFoundException('Room info not found');
    }
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
    });
    if (!studioRoom) {
      throw new NotFoundException('Studio room not found');
    }
    return { room: this.mapToProtoStudioRoom(studioRoom) };
  }

  async getStudioRooms(studioId: number): Promise<ListStudioRoomsResponse> {
    const studioRooms = await this.studioRoomRepository.find({
      where: { studioId: studioId },
    });

    return {
      rooms: studioRooms.map((room) => this.mapToProtoStudioRoom(room)),
    };
  }

  async updateStudioRoom(
    studioId: number,
    roomId: number,
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
    return await this.studioRoomRepository.save(studioRoom);
  }

  async updateStudioRoomInfo(
    studioId: number,
    roomId: number,
    infoId: number,
    updateStudioRoomInfoDto: UpdateStudioRoomInfoDto,
  ): Promise<UpdateStudioRoomInfoResponse> {
    const roomInfo = await this.studioRoomInfoRepository.findOne({
      where: { id: infoId, studioRoomId: roomId, studioId: studioId },
    });
    if (!roomInfo) {
      throw new NotFoundException('Room info not found');
    }
    roomInfo.type = updateStudioRoomInfoDto.type;
    roomInfo.key = updateStudioRoomInfoDto.key;
    roomInfo.value = updateStudioRoomInfoDto.value;
    const savedRoomInfo = await this.studioRoomInfoRepository.save(roomInfo);
    return {
      info: this.mapToProtoStudioRoomInfo(savedRoomInfo),
    };
  }

  async createStudioRoomInfo(
    studioId: number,
    roomId: number,
    createStudioRoomInfoDto: CreateStudioRoomInfoDto,
  ): Promise<CreateStudioRoomInfoResponse> {
    const roomInfo = {
      studioId: studioId,
      studioRoomId: roomId,
      ...createStudioRoomInfoDto,
    };
    const savedRoomInfo = await this.studioRoomInfoRepository.save(roomInfo);
    return {
      info: this.mapToProtoStudioRoomInfo(savedRoomInfo),
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
