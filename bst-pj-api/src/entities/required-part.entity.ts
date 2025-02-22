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
import { SessionPart } from './session-part.entity';

@Entity('required_parts')
@Unique(['sessionSongId', 'sessionPartId'])
export class RequiredPart {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_song_id', type: 'integer', nullable: false })
  sessionSongId: number;

  @Column({ name: 'session_part_id', type: 'integer', nullable: false })
  sessionPartId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => SessionPart, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_part_id' })
  sessionPart: SessionPart;
}
