import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Area } from './area.entity';

@Entity('user_prefectures')
export class UserPrefecture {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({ name: 'prefecture_id', type: 'integer', nullable: false })
  prefectureId: number;

  @Column({
    name: 'is_primary',
    type: 'boolean',
    nullable: false,
    default: false,
    comment: '主な活動地域かどうか',
  })
  isPrimary: boolean;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Area, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'prefecture_id' })
  area: Area;
}
