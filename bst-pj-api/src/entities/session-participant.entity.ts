import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
  Unique,
} from 'typeorm';
import { Session } from './session.entity';
import { User } from './user.entity';

export enum SessionParticipantStatus {
  Confirmed = 'Confirmed',
  Cancelled = 'Cancelled',
}

@Entity('session_participants')
@Unique(['sessionId', 'userId'])
export class SessionParticipant {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_id', type: 'integer', nullable: false })
  sessionId: number;

  @Column({ name: 'user_id', type: 'integer', nullable: false })
  userId: number;

  @Column({
    type: 'enum',
    enum: SessionParticipantStatus,
    default: SessionParticipantStatus.Confirmed,
    nullable: false,
    comment: '参加ステータス（例: 確定、キャンセル）',
  })
  status: SessionParticipantStatus;

  @Column({
    name: 'is_admin',
    type: 'boolean',
    default: false,
    nullable: false,
    comment: '管理者フラグ',
  })
  isAdmin: boolean;

  @Column({
    name: 'is_observer',
    type: 'boolean',
    default: false,
    nullable: false,
    comment: '観察者フラグ (演奏しない)',
  })
  isObserver: boolean;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Session, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_id' })
  session: Session;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'user_id' })
  user: User;
}
