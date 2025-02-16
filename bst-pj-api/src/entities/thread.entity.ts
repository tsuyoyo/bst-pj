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

export enum ThreadContextType {
  Session = 'Session',
  Group = 'Group',
  Global = 'Global',
  SongPerformance = 'SongPerformance',
}

@Entity('threads')
export class Thread {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    name: 'context_type',
    type: 'enum',
    enum: ThreadContextType,
    nullable: false,
  })
  contextType: ThreadContextType;

  @Column({
    name: 'context_id',
    type: 'integer',
    nullable: true,
    comment: '対応するコンテキストのID（セッションIDやグループIDなど）',
  })
  contextId: number;

  @Column({ type: 'varchar', length: 255, nullable: false })
  title: string;

  @Column({ type: 'text', nullable: true })
  description: string;

  @Column({ name: 'created_by', type: 'integer', nullable: false })
  createdBy: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'created_by' })
  creator: User;
}
