import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { ReactionType } from './reaction-type.entity';
import { User } from './user.entity';

export enum ReactionTargetType {
  Thread = 'Thread',
  Comment = 'Comment',
}

@Entity('reactions')
export class Reaction {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    name: 'target_type',
    type: 'enum',
    enum: ReactionTargetType,
    nullable: false,
  })
  targetType: ReactionTargetType;

  @Column({ name: 'target_id', type: 'integer', nullable: false })
  targetId: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({ name: 'reaction_type_id', type: 'integer', nullable: false })
  reactionTypeId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => ReactionType, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'reaction_type_id' })
  reactionType: ReactionType;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'user_id' })
  user: User;
}
