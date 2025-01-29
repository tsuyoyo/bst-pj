import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Party } from './party.entity';
import { SessionParticipant } from './session-participant.entity';

@Entity('party_hosts')
export class PartyHost {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'party_id', type: 'integer', nullable: false })
  partyId: number;

  @Column({ name: 'session_participant_id', type: 'integer', nullable: false })
  sessionParticipantId: number;

  @Column({ type: 'varchar', length: 50, nullable: true })
  role: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @ManyToOne(() => Party, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'party_id' })
  party: Party;

  @ManyToOne(() => SessionParticipant, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'session_participant_id' })
  sessionParticipant: SessionParticipant;
}
