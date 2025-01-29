import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { SessionTimetable } from './session-timetable.entity';

export enum ActivityType {
  SongPerformance = 'SongPerformance',
  Party = 'Party',
}

@Entity('activities')
export class Activity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_timetable_id', type: 'integer', nullable: false })
  sessionTimetableId: number;

  @Column({
    type: 'enum',
    enum: ActivityType,
    nullable: false,
    comment: '活動の種類 (例: SongPerformance, Party)',
  })
  type: ActivityType;

  @Column({ name: 'start_time', type: 'timestamp', nullable: false })
  startTime: Date;

  @Column({ name: 'end_time', type: 'timestamp', nullable: false })
  endTime: Date;

  @Column({ type: 'text', nullable: true })
  description: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => SessionTimetable, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_timetable_id' })
  sessionTimetable: SessionTimetable;
}
