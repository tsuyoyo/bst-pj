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
import { PartyParticipantStatus } from './types/party-participant-status.enum';

@Entity('party_participants')
export class PartyParticipant {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'party_id', type: 'integer', nullable: false })
  partyId: number;

  @Column({ name: 'session_participant_id', type: 'integer', nullable: false })
  sessionParticipantId: number;

  @Column({
    type: 'enum',
    enum: PartyParticipantStatus,
    default: PartyParticipantStatus.PENDING,
    nullable: false,
  })
  status: PartyParticipantStatus;

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
