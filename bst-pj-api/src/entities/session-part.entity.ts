import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Session } from './session.entity';
import { Part } from './part.entity';

@Entity('session_parts')
export class SessionPart {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_id', type: 'integer', nullable: false })
  sessionId: number;

  @Column({
    type: 'varchar',
    length: 100,
    nullable: false,
    comment:
      'パート名 (例: Gt1, Gt2 のようなケースのためにSessionPartもNameを持つ)',
  })
  name: string;

  @Column({ name: 'part_id', type: 'integer', nullable: false })
  partId: number;

  @Column({
    name: 'display_order',
    type: 'integer',
    nullable: false,
    comment: '表示順',
  })
  displayOrder: number;

  @Column({
    name: 'max_entry',
    type: 'integer',
    nullable: false,
    comment: 'エントリーできる上限 (進行と共に変更可能)',
  })
  maxEntry: number;

  @Column({
    name: 'transition_cost',
    type: 'integer',
    nullable: false,
    comment: '転換コスト (セッションごとに変わる)',
  })
  transitionCost: number;

  @Column({ type: 'text', nullable: true })
  notes: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Part, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'part_id' })
  part: Part;
}
