import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionParticipantPart } from '../entities/session-participant-part.entity';
import { SessionPart as ProtoSessionPart } from '../proto/bst/v1/session';
import { SessionPartService } from '../session-part/session-part.service';

@Injectable()
export class SessionParticipantPartService {
  constructor(
    @InjectRepository(SessionParticipantPart)
    private readonly sessionParticipantPartRepository: Repository<SessionParticipantPart>,
    private readonly sessionPartService: SessionPartService,
  ) {}

  async findBySessionParticipantId(
    sessionParticipantId: number,
  ): Promise<{ parts: ProtoSessionPart[]; primaryPartId: number }> {
    const parts = await this.sessionParticipantPartRepository.find({
      where: { sessionParticipantId },
    });
    return this.mapToProto(parts);
  }

  async create(
    sessionParticipantId: number,
    sessionPartId: number,
    isPrimary: boolean,
  ): Promise<void> {
    const part = this.sessionParticipantPartRepository.create({
      sessionParticipantId,
      sessionPartId,
      isPrimary,
    });
    await this.sessionParticipantPartRepository.save(part);
  }

  async delete(sessionParticipantId: number): Promise<void> {
    await this.sessionParticipantPartRepository.delete({
      sessionParticipantId,
    });
  }

  async mapToProto(
    parts: SessionParticipantPart[],
  ): Promise<{ parts: ProtoSessionPart[]; primaryPartId: number }> {
    const protoSessionParts = await Promise.all(
      parts.map(async (part) => {
        const sessionPart = await this.sessionPartService.getSessionPart(
          part.sessionPartId,
        );
        return sessionPart;
      }),
    );
    return {
      parts: protoSessionParts,
      primaryPartId: parts.find((p) => p.isPrimary)?.id ?? parts[0].id,
    };
  }

  /**
   * Count the number of participants in a session part
   * @param sessionPartId - The ID of the session part
   * @param isPrimary - true when counting primary part
   * @returns The number of participants in the session part
   */
  async countParticipantBySessionPartId(
    sessionPartId: number,
    isPrimary: boolean,
  ): Promise<number> {
    return this.sessionParticipantPartRepository.count({
      where: { sessionPartId, isPrimary },
    });
  }
}
