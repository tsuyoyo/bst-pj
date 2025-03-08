import { Controller, Get } from '@nestjs/common';
import { StudioRoomInfoTypeService } from './studio-room-info-type.service';
import { ListRoomInfoTypesResponse } from '../proto/bst/v1/studio_room_service';

@Controller('studios/rooms/infos/types')
export class StudioRoomInfoTypeController {
  constructor(
    private readonly studioRoomInfoTypeService: StudioRoomInfoTypeService,
  ) {}

  @Get()
  async listRoomInfoTypes(): Promise<ListRoomInfoTypesResponse> {
    return this.studioRoomInfoTypeService.listRoomInfoTypes();
  }
}
