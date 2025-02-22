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
import { SessionParticipant } from './session-participant.entity';
import { SessionPart } from './session-part.entity';

@Entity('session_participant_parts')
@Unique(['sessionParticipantId', 'sessionPartId'])
export class SessionParticipantPart {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'session_participant_id', type: 'integer', nullable: false })
  sessionParticipantId: number;

  @Column({ name: 'session_part_id', type: 'integer', nullable: false })
  sessionPartId: number;

  @Column({
    name: 'is_primary',
    type: 'boolean',
    default: false,
    nullable: false,
    comment: 'このPartがメインであることを示す',
  })
  isPrimary: boolean;

  @Column({ name: 'display_order', type: 'integer', nullable: false })
  displayOrder: number;

  @Column({ name: 'max_entry_count', type: 'integer', nullable: false })
  maxEntryCount: number;

  @Column({ name: 'transition_cost', type: 'integer', nullable: true })
  transitionCost: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => SessionParticipant, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_participant_id' })
  sessionParticipant: SessionParticipant;

  @ManyToOne(() => SessionPart, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_part_id' })
  sessionPart: SessionPart;
}
