import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
} from 'typeorm';

export enum MentionType {
  User = 'User',
  AllSession = 'AllSession',
  AllThread = 'AllThread',
}

@Entity('mentions')
export class Mention {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'comment_id', type: 'integer', nullable: false })
  commentId: number;

  @Column({
    name: 'mention_type',
    type: 'enum',
    enum: MentionType,
    nullable: false,
  })
  mentionType: MentionType;

  @Column({
    name: 'mentioned_user_id',
    type: 'integer',
    nullable: true,
    comment: 'MentionTypeがUserの場合に使用',
  })
  mentionedUserId: number;

  @Column({
    name: 'mentioned_session_id',
    type: 'integer',
    nullable: true,
    comment: 'MentionTypeがAllSessionの場合に使用',
  })
  mentionedSessionId: number;

  @Column({
    name: 'mentioned_thread_id',
    type: 'integer',
    nullable: true,
    comment: 'MentionTypeがAllThreadの場合に使用',
  })
  mentionedThreadId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;
}
