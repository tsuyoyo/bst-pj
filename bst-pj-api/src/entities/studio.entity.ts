import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
  OneToMany,
} from 'typeorm';
import { Location } from './location.entity';
import { StudioRoom } from './studio-room.entity';

@Entity('studios')
export class Studio {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'varchar', length: 255, nullable: false })
  name: string;

  @Column({ type: 'text', nullable: true })
  description: string;

  @Column({ type: 'integer', nullable: false })
  areaId: number;

  @Column({ type: 'text', nullable: false })
  googleMapsUrl: string;

  @Column({ type: 'text', nullable: true })
  additionalInfo: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Location, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'location_id' })
  location: Location;

  @OneToMany(() => StudioRoom, (room) => room.studio, { eager: false })
  rooms: StudioRoom[];

  @Column({ name: 'updated_user_id', type: 'integer', nullable: false })
  updatedUserId: number;
}
