import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  Check,
} from 'typeorm';
import { RatingTargetType } from './types/rating-target-type.enum';

@Entity('ratings')
@Check('rating >= 1 AND rating <= 5')
export class Rating {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    name: 'target_type',
    type: 'enum',
    enum: RatingTargetType,
    nullable: false,
  })
  targetType: RatingTargetType;

  @Column({ name: 'target_id', type: 'integer', nullable: false })
  targetId: number;

  @Column({ type: 'integer', nullable: false })
  rating: number;

  @Column({ type: 'text', nullable: true })
  comment: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;
}
