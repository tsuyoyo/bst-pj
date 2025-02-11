import { Part as PartEntity } from '../../entities/part.entity';
import { Part as PartProto } from '../../proto/bst/v1/content';

export class PartMapper {
  static toProto(entity: PartEntity): PartProto {
    return {
      id: entity.id,
      name: entity.name,
      description: entity.description || '',
    };
  }

  static toProtoList(entities: PartEntity[]): PartProto[] {
    return entities.map((entity) => PartMapper.toProto(entity));
  }
}
