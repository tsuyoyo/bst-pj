import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { ResourceTargetType } from './types/resource-target-type.enum';
import { ResourceType } from './types/resource-type.enum';
import { User } from './user.entity';

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

  @Column({
    name: 'type',
    type: 'enum',
    enum: ResourceType,
    nullable: false,
    comment: 'リソースの種類 (例: 画像, 動画)',
  })
  type: ResourceType;

  @Column({ type: 'text', nullable: false })
  url: string;

  @Column({ type: 'varchar', length: 255, nullable: false })
  name: string;

  @Column({ type: 'text', nullable: true })
  description: string;

  @Column({ name: 'created_by', type: 'integer', nullable: false })
  createdBy: number;

  @ManyToOne(() => User, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'created_by' })
  creator: User;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;
}
