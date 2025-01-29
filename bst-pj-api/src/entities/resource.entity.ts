import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
} from 'typeorm';
import { ResourceTargetType } from './types/resource-target-type.enum';

@Entity('resources')
export class Resource {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    name: 'target_type',
    type: 'enum',
    enum: ResourceTargetType,
    nullable: false,
  })
  targetType: ResourceTargetType;

  @Column({ name: 'target_id', type: 'integer', nullable: false })
  targetId: number;

  @Column({ type: 'varchar', length: 50, nullable: false })
  type: string;

  @Column({ type: 'text', nullable: false })
  url: string;

  @Column({ type: 'varchar', length: 255, nullable: false })
  name: string;

  @Column({ type: 'text', nullable: true })
  description: string;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;
}
