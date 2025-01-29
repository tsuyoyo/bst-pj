import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { User } from './user.entity';
import { Part } from './part.entity';

@Entity('user_parts')
export class UserPart {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({ name: 'part_id', type: 'integer', nullable: false })
  partId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'user_id' })
  user: User;

  @ManyToOne(() => Part, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'part_id' })
  part: Part;
}
