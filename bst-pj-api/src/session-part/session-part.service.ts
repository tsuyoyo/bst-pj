import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionPart } from '../entities/session-part.entity';
import { AddSessionPartDto } from './dto/add-session-part.dto';
import { UpdateSessionPartDto } from './dto/update-session-part.dto';
import { User } from '../entities/user.entity';
import {
  AddSessionPartResponse,
  DeleteSessionPartResponse,
  ListSessionPartsResponse,
  UpdateSessionPartResponse,
} from '../proto/bst/v1/session_part_service';
import { PartService } from '../part/part.service';
import { SessionService } from '../session/session.service';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
@Injectable()
export class SessionPartService {
  constructor(
    @InjectRepository(SessionPart)
    private readonly sessionPartRepository: Repository<SessionPart>,
    private readonly sessionService: SessionService,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
    private readonly partService: PartService,
  ) {}

  async getSessionPart(sessionPartId: number): Promise<SessionPart> {
    const sessionPart = await this.sessionPartRepository.findOne({
      where: { id: sessionPartId },
    });
    if (!sessionPart) {
      throw new NotFoundException(`Session part ${sessionPartId} not found`);
    }
    return sessionPart;
  }

  async listSessionParts(
    sessionId: number,
    user: User,
  ): Promise<ListSessionPartsResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const sessionParts = await this.sessionPartRepository.find({
      where: { sessionId },
      relations: ['part'],
      order: { displayOrder: 'ASC' },
    });

    return {
      parts: await Promise.all(
        sessionParts.map(async (sp) => ({
          id: sp.id.toString(),
          part: (await this.partService.getPart(sp.partId)).part,
          name: sp.name,
          displayOrder: sp.displayOrder,
          maxEntry: sp.maxEntry,
        })),
      ),
    };
  }

  async addSessionPart(
    sessionId: number,
    request: AddSessionPartDto,
    user: User,
  ): Promise<AddSessionPartResponse> {
    // When the user hasn't registered the session, exception is thrown.
    await this.sessionVerifyAccessService.verifySessionAccess(
      Number(sessionId),
      user,
    );

    const sessionPart = this.sessionPartRepository.create({
      sessionId: Number(sessionId),
      name: request.name,
      partId: request.partId,
      displayOrder: request.displayOrder,
      maxEntry: request.maxEntry,
      transitionCost: request.transitionCost,
    });

    const savedSessionPart = await this.sessionPartRepository.save(sessionPart);

    const { part } = await this.partService.getPart(savedSessionPart.partId);
    if (!part) {
      throw new NotFoundException(`Part ${savedSessionPart.partId} not found`);
    }
    return {
      part: {
        part,
        name: savedSessionPart.name,
        displayOrder: savedSessionPart.displayOrder,
        maxEntry: savedSessionPart.maxEntry,
      },
    };
  }

  async updateSessionPart(
    sessionId: number,
    sessionPartId: number,
    request: UpdateSessionPartDto,
    user: User,
  ): Promise<UpdateSessionPartResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const sessionPart = await this.sessionPartRepository.findOne({
      where: { id: sessionPartId, sessionId },
    });

    if (!sessionPart) {
      throw new NotFoundException(`Session part ${sessionPartId} not found`);
    }

    const { part } = await this.partService.getPart(request.partId);
    if (!part) {
      throw new NotFoundException(`Part ${sessionPart.partId} not found`);
    }

    const updatedSessionPart = await this.sessionPartRepository.save({
      ...sessionPart,
      partId: request.partId,
      name: request.name,
      displayOrder: request.displayOrder,
      maxEntry: request.maxEntry,
    });

    return {
      part: {
        part,
        name: updatedSessionPart.name,
        displayOrder: updatedSessionPart.displayOrder,
        maxEntry: updatedSessionPart.maxEntry,
      },
    };
  }

  async deleteSessionPart(
    sessionId: number,
    sessionPartId: number,
    user: User,
  ): Promise<DeleteSessionPartResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const sessionPart = await this.sessionPartRepository.findOne({
      where: { id: sessionPartId, sessionId },
    });

    if (!sessionPart) {
      return { success: false };
    }

    await this.sessionPartRepository.remove(sessionPart);
    return { success: true };
  }
}
