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
import { SessionSong } from './session-song';
import { SessionParticipant } from './session-participant.entity';
import { SessionPart } from './session-part.entity';

@Entity('entries')
@Unique(['sessionSongId', 'sessionParticipantId', 'sessionPartId'])
export class Entry {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_song_id', type: 'integer', nullable: false })
  sessionSongId: number;

  @Column({ name: 'session_participant_id', type: 'integer', nullable: false })
  sessionParticipantId: number;

  @Column({ name: 'session_part_id', type: 'integer', nullable: false })
  sessionPartId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => SessionSong, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_song_id' })
  sessionSong: SessionSong;

  @ManyToOne(() => SessionParticipant, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_participant_id' })
  sessionParticipant: SessionParticipant;

  @ManyToOne(() => SessionPart, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_part_id' })
  sessionPart: SessionPart;
}
