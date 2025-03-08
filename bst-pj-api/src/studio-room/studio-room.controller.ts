import {
  Body,
  Controller,
  Get,
  Param,
  Post,
  Put,
  Delete,
  UseGuards,
  Req,
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
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from '../entities/user.entity';

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
  @UseGuards(JwtAuthGuard)
  async createStudioRoom(
    @Param('studioId') studioId: number,
    @Body() createStudioRoomDto: CreateStudioRoomDto,
    @Req() req: { user: User },
  ): Promise<CreateStudioRoomResponse> {
    return this.studioRoomService.createStudioRoom(
      studioId,
      req.user,
      createStudioRoomDto,
    );
  }

  @Post(':studioId/rooms/:roomId/infos')
  @UseGuards(JwtAuthGuard)
  async createStudioRoomInfo(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Req() req: { user: User },
    @Body() createStudioRoomInfoDto: CreateStudioRoomInfoDto,
  ): Promise<CreateStudioRoomInfoResponse> {
    return this.studioRoomService.createStudioRoomInfo(
      studioId,
      roomId,
      req.user,
      createStudioRoomInfoDto,
    );
  }

  @Put(':studioId/rooms/:roomId')
  @UseGuards(JwtAuthGuard)
  async updateStudioRoom(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Req() req: { user: User },
    @Body() updateStudioRoomDto: UpdateStudioRoomRequest,
  ): Promise<StudioRoom> {
    return this.studioRoomService.updateStudioRoom(
      studioId,
      roomId,
      req.user,
      updateStudioRoomDto,
    );
  }

  @Put(':studioId/rooms/:roomId/infos/:infoId')
  @UseGuards(JwtAuthGuard)
  async updateStudioRoomInfo(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
    @Param('infoId') infoId: number,
    @Req() req: { user: User },
    @Body() updateStudioRoomInfoDto: UpdateStudioRoomInfoDto,
  ): Promise<UpdateStudioRoomInfoResponse> {
    return this.studioRoomService.updateStudioRoomInfo(
      studioId,
      roomId,
      infoId,
      req.user,
      updateStudioRoomInfoDto,
    );
  }

  @Delete(':studioId/rooms/:roomId')
  @UseGuards(JwtAuthGuard)
  async deleteStudioRoom(
    @Param('studioId') studioId: number,
    @Param('roomId') roomId: number,
  ): Promise<DeleteStudioRoomResponse> {
    return this.studioRoomService.deleteStudioRoom(studioId, roomId);
  }

  @Delete(':studioId/rooms/:roomId/infos/:infoId')
  @UseGuards(JwtAuthGuard)
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
