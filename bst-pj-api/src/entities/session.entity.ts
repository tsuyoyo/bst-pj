import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { User } from './user.entity';
import { Location } from './location.entity';
import { SessionStatus } from './types/session-status.enum';

@Entity('sessions')
export class Session {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'varchar', length: 255, nullable: false })
  title: string;

  @Column({
    type: 'enum',
    enum: SessionStatus,
    default: SessionStatus.BeforeEntry,
    nullable: false,
  })
  status: SessionStatus;

  @Column({ type: 'text', nullable: true })
  description: string;

  @Column({ type: 'timestamp', nullable: false })
  date: Date;

  @Column({ name: 'entry_open_date', type: 'timestamp', nullable: true })
  entryOpenDate: Date;

  @Column({ name: 'entry_close_date', type: 'timestamp', nullable: true })
  entryCloseDate: Date;

  @Column({
    name: 'creator_id',
    type: 'integer',
    nullable: false,
    comment: '作成者のUserID',
  })
  creatorId: number;

  @Column({ name: 'location_id', type: 'integer', nullable: true })
  locationId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'creator_id' })
  creator: User;

  @ManyToOne(() => Location, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'location_id' })
  location: Location;
}
