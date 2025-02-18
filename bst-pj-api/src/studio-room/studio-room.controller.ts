import {
  Body,
  Controller,
  Get,
  Param,
  Post,
  Put,
  Delete,
} from '@nestjs/common';
import { StudioRoomService } from './studio-room.service';
import { CreateStudioRoomDto } from './dto/create-studio-room.dto';
import { StudioRoom } from '../entities/studio-room.entity';
import {
  ListStudioRoomInfosResponse,
  ListStudioRoomsResponse,
  UpdateStudioRoomRequest,
  GetStudioRoomResponse,
  CreateStudioRoomResponse,
  DeleteStudioRoomInfoResponse,
  DeleteStudioRoomResponse,
  CreateStudioRoomInfoResponse,
  UpdateStudioRoomInfoResponse,
} from '../proto/bst/v1/studio_room_service';
import { CreateStudioRoomInfoDto } from './dto/create-studio-room-info.dto';
import { UpdateStudioRoomInfoDto } from './dto/update-studio-room-info.dto';

@Controller('studios')
export class StudioRoomController {
  constructor(private readonly studioRoomService: StudioRoomService) {}

  @Get(':studioId/rooms')
  async getStudioRooms(
    @Param('studioId') studioId: number,
  ): Promise<ListStudioRoomsResponse> {
    return this.studioRoomService.getStudioRooms(studioId);
  }

  @Get(':studioId/rooms/:roomId')
  async getStudioRoom(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
  ): Promise<GetStudioRoomResponse> {
    return this.studioRoomService.getStudioRoom(studioId, roomId);
  }

  @Get(':studioId/rooms/:roomId/infos')
  async getRoomInfosByStudioId(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
  ): Promise<ListStudioRoomInfosResponse> {
    return this.studioRoomService.getRoomInfos(studioId, roomId);
  }

  @Post(':studioId/rooms')
  async createStudioRoom(
    @Param('studioId') studioId: number,
    @Body() createStudioRoomDto: CreateStudioRoomDto,
  ): Promise<CreateStudioRoomResponse> {
    return this.studioRoomService.createStudioRoom(
      studioId,
      createStudioRoomDto,
    );
  }

  @Post(':studioId/rooms/:roomId/infos')
  async createStudioRoomInfo(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Body() createStudioRoomInfoDto: CreateStudioRoomInfoDto,
  ): Promise<CreateStudioRoomInfoResponse> {
    return this.studioRoomService.createStudioRoomInfo(
      studioId,
      roomId,
      createStudioRoomInfoDto,
    );
  }

  @Put(':studioId/rooms/:roomId')
  async updateStudioRoom(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Body() updateStudioRoomDto: UpdateStudioRoomRequest,
  ): Promise<StudioRoom> {
    return this.studioRoomService.updateStudioRoom(
      studioId,
      roomId,
      updateStudioRoomDto,
    );
  }

  @Put(':studioId/rooms/:roomId/infos/:infoId')
  async updateStudioRoomInfo(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Param('infoId') infoId: number,
    @Body() updateStudioRoomInfoDto: UpdateStudioRoomInfoDto,
  ): Promise<UpdateStudioRoomInfoResponse> {
    return this.studioRoomService.updateStudioRoomInfo(
      studioId,
      roomId,
      infoId,
      updateStudioRoomInfoDto,
    );
  }

  @Delete(':studioId/rooms/:roomId')
  async deleteStudioRoom(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
  ): Promise<DeleteStudioRoomResponse> {
    return this.studioRoomService.deleteStudioRoom(studioId, roomId);
  }

  @Delete(':studioId/rooms/:roomId/infos/:infoId')
  async deleteStudioRoomInfo(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Param('infoId') infoId: number,
  ): Promise<DeleteStudioRoomInfoResponse> {
    return await this.studioRoomService.deleteStudioRoomInfo(
      studioId,
      roomId,
      infoId,
    );
  }
}
