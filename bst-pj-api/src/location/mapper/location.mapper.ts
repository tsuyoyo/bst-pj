import { Location as LocationEntity } from '../../entities/location.entity';
import { Location as LocationProto } from '../../proto/bst/v1/location';
import { Area } from '../../proto/bst/v1/area';

export class LocationMapper {
  static toProto(entity: LocationEntity): LocationProto {
    const area: Area = {
      name: entity.area?.name || '',
      prefectureId: entity.area?.prefectureId || 0,
    };

    return {
      id: entity.id,
      name: entity.name,
      additionalInfo: entity.additionalInfo || '',
      area,
      mapUrl: entity.googleMapsUrl || '',
    };
  }

  static toProtoList(entities: LocationEntity[]): LocationProto[] {
    return entities.map((entity) => LocationMapper.toProto(entity));
  }
}
