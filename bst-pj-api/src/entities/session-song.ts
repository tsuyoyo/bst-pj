import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Song } from './song.entity';

@Entity('session_songs')
export class SessionSong {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_id', type: 'integer', nullable: false })
  sessionId: number;

  @Column({ name: 'song_id', type: 'integer', nullable: false })
  songId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Song, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'song_id' })
  song: Song;
}
