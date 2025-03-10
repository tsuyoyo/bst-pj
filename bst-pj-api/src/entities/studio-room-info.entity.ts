import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { StudioRoom } from './studio-room.entity';
import { StudioRoomInfoType } from './studio-room-info-type.entity';

@Entity('studio_room_infos')
export class StudioRoomInfo {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'studio_room_id', type: 'integer', nullable: false })
  studioRoomId: number;

  @Column({ name: 'studio_id', type: 'integer', nullable: false })
  studioId: number;

  @Column({
    name: 'studio_room_info_type_id',
    type: 'integer',
    nullable: false,
  })
  typeId: number;

  @Column({
    type: 'varchar',
    length: 100,
    nullable: false,
    comment: '情報のキー (例: ギターアンプ)',
  })
  key: string;

  @Column({
    type: 'varchar',
    length: 255,
    nullable: false,
    comment: '情報の値 (例: Marshall)',
  })
  value: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @Column({ name: 'updated_user_id', type: 'integer', nullable: false })
  updatedUserId: number;

  @ManyToOne(() => StudioRoom, (room) => room.infos, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'studio_room_id' })
  studioRoom: StudioRoom;

  @ManyToOne(() => StudioRoomInfoType, (infoType) => infoType.roomInfos)
  @JoinColumn({ name: 'studio_room_info_type_id' })
  type: StudioRoomInfoType;
}
