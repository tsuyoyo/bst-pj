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
import { Location } from './location.entity';

@Entity('parties')
export class Party {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'activity_id', type: 'integer', nullable: false })
  activityId: number;

  @Column({ name: 'location_id', type: 'integer', nullable: false })
  locationId: number;

  @Column({ type: 'integer', nullable: false })
  fee: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Activity, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'activity_id' })
  activity: Activity;

  @ManyToOne(() => Location, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'location_id' })
  location: Location;
}
