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

export enum SessionStatus {
  BeforeEntry = 'BeforeEntry',
  EntryOpen = 'EntryOpen',
  EntryClosed = 'EntryClosed',
  Approaching = 'Approaching',
  Ongoing = 'Ongoing',
  Completed = 'Completed',
}

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

  @Column({ name: 'entry_open_date', type: 'timestamp', nullable: false })
  entryOpenDate: Date;

  @Column({ name: 'entry_close_date', type: 'timestamp', nullable: false })
  entryCloseDate: Date;

  @Column({
    name: 'organizer_id',
    type: 'integer',
    nullable: false,
    comment: '作成者のUserID',
  })
  organizerId: number;

  @Column({ name: 'location_id', type: 'integer', nullable: false })
  locationId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'organizer_id' })
  organizer: User;

  @ManyToOne(() => Location, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'location_id' })
  location: Location;
}
