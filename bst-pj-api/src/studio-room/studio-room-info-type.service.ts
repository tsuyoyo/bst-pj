import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { StudioRoomInfoType } from '../entities/studio-room-info-type.entity';
import { ListRoomInfoTypesResponse } from '../proto/bst/v1/studio_room_service';
import { StudioRoomInfoType as ProtoStudioRoomInfoType } from '../proto/bst/v1/location';

@Injectable()
export class StudioRoomInfoTypeService {
  constructor(
    @InjectRepository(StudioRoomInfoType)
    private readonly studioRoomInfoTypeRepository: Repository<StudioRoomInfoType>,
  ) {}

  mapToProtoStudioRoomInfoType(
    infoType: StudioRoomInfoType,
  ): ProtoStudioRoomInfoType {
    return {
      id: infoType.id,
      name: infoType.name,
    };
  }

  async listRoomInfoTypes(): Promise<ListRoomInfoTypesResponse> {
    const types = await this.studioRoomInfoTypeRepository.find();
    return {
      types: types.map((type) => this.mapToProtoStudioRoomInfoType(type)),
    };
  }
}
