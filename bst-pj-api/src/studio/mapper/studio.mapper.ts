import { Studio as StudioEntity } from '../../entities/studio.entity';
import { Studio as StudioProto } from '../../proto/bst/v1/location';
import { LocationMapper } from '../../location/mapper/location.mapper';

export class StudioMapper {
  static toProto(entity: StudioEntity): StudioProto {
    return {
      id: entity.id,
      location: entity.location
        ? LocationMapper.toProto(entity.location)
        : undefined,
      overallRating: 0, // TODO: 評価の計算ロジックを実装
    };
  }

  static toProtoList(entities: StudioEntity[]): StudioProto[] {
    return entities.map((entity) => StudioMapper.toProto(entity));
  }
}
