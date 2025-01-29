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
import { FollowStatus } from './types/follow-status.enum';

@Entity('follows')
export class Follow {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'follower_id', type: 'integer', nullable: false })
  followerId: number;

  @Column({ name: 'following_id', type: 'integer', nullable: false })
  followingId: number;

  @Column({
    type: 'enum',
    enum: FollowStatus,
    nullable: false,
  })
  status: FollowStatus;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'follower_id' })
  follower: User;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'following_id' })
  following: User;
}
