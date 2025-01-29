import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Activity } from './activity.entity';
import { Song } from './song.entity';

@Entity('song_performances')
export class SongPerformance {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'activity_id', type: 'integer', nullable: false })
  activityId: number;

  @Column({ name: 'song_id', type: 'integer', nullable: false })
  songId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Activity, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'activity_id' })
  activity: Activity;

  @ManyToOne(() => Song, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'song_id' })
  song: Song;
}
