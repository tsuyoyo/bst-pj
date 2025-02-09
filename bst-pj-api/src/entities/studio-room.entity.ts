import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  OneToMany,
  JoinColumn,
} from 'typeorm';
import { Studio } from './studio.entity';
import { StudioRoomInfo } from './studio-room-info.entity';

@Entity('studio_rooms')
export class StudioRoom {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'studio_id', type: 'integer', nullable: false })
  studioId: number;

  @Column({ type: 'varchar', length: 255, nullable: false })
  name: string;

  @Column({ type: 'integer', nullable: false })
  capacity: number;

  @Column({ type: 'integer', nullable: false })
  price: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Studio, (studio) => studio.rooms, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'studio_id' })
  studio: Studio;

  @OneToMany(() => StudioRoomInfo, (info) => info.studioRoom, { eager: false })
  infos: StudioRoomInfo[];

  @Column({ name: 'updated_user_id', type: 'integer', nullable: false })
  updatedUserId: number;
}
