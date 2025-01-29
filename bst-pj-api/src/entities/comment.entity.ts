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

export enum CommentTargetType {
  Thread = 'Thread',
  Timeline = 'Timeline',
  Resource = 'Resource',
}

@Entity('comments')
export class Comment {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    name: 'target_type',
    type: 'enum',
    enum: CommentTargetType,
    nullable: false,
  })
  targetType: CommentTargetType;

  @Column({ name: 'target_id', type: 'integer', nullable: false })
  targetId: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({ type: 'text', nullable: false })
  content: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'user_id' })
  user: User;
}
