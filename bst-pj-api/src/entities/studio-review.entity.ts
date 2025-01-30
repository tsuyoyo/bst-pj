import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
  Check,
} from 'typeorm';
import { Studio } from './studio.entity';
import { User } from './user.entity';

@Entity('studio_reviews')
@Check('rating >= 1 AND rating <= 5')
export class StudioReview {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'studio_id', type: 'integer', nullable: false })
  studioId: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({ type: 'integer', nullable: false, comment: '評価 (1~5)' })
  rating: number;

  @Column({ type: 'text', nullable: true, comment: 'Optional' })
  comment: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Studio, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'studio_id' })
  studio: Studio;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'user_id' })
  user: User;
}
