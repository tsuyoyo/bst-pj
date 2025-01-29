import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
  Unique,
} from 'typeorm';
import { SongPerformance } from './song-performance.entity';
import { SessionParticipant } from './session-participant.entity';
import { SessionPart } from './session-part.entity';

@Entity('entries')
@Unique(['songPerformanceId', 'sessionParticipantId', 'sessionPartId'])
export class Entry {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'song_performance_id', type: 'integer', nullable: false })
  songPerformanceId: number;

  @Column({ name: 'session_participant_id', type: 'integer', nullable: false })
  sessionParticipantId: number;

  @Column({ name: 'session_part_id', type: 'integer', nullable: false })
  sessionPartId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => SongPerformance, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'song_performance_id' })
  songPerformance: SongPerformance;

  @ManyToOne(() => SessionParticipant, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_participant_id' })
  sessionParticipant: SessionParticipant;

  @ManyToOne(() => SessionPart, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_part_id' })
  sessionPart: SessionPart;
}
