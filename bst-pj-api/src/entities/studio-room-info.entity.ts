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

@Entity('studio_room_infos')
export class StudioRoomInfo {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'studio_room_id', type: 'integer', nullable: false })
  studioRoomId: number;

  @Column({
    type: 'varchar',
    length: 50,
    nullable: false,
    comment: '情報の種類 (例: Equipment)',
  })
  type: string;

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

  @ManyToOne(() => StudioRoom, (room) => room.infos, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'studio_room_id' })
  studioRoom: StudioRoom;
}
