import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionSongEntry } from '../entities/session-song-entry.entity';
import { SessionSongEntry as ProtoSessionSongEntry } from '../proto/bst/v1/session';
import { User } from '../entities/user.entity';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';
import { AddSessionSongEntryDto } from './dto/add-session-song-entry.dto';
import { UpdateSessionSongEntryDto } from './dto/update-session-song-entry.dto';
import {
  AddSongEntryResponse,
  UpdateSongEntryResponse,
  DeleteSongEntryResponse,
} from '../proto/bst/v1/session_song_entry_service';
import { SessionParticipantService } from '../session-participant/session-participant.service';
import { SessionPartService } from '../session-part/session-part.service';

@Injectable()
export class SessionSongEntryService {
  constructor(
    @InjectRepository(SessionSongEntry)
    private readonly sessionSongEntryRepository: Repository<SessionSongEntry>,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
    private readonly sessionParticipantService: SessionParticipantService,
    private readonly sessionPartService: SessionPartService,
  ) {}

  async addSongEntry(
    sessionId: number,
    songId: number,
    dto: AddSessionSongEntryDto,
    user: User,
  ): Promise<AddSongEntryResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const participant =
      await this.sessionParticipantService.getSessionParticipantByUserId(
        sessionId,
        user.id,
      );

    const entry = this.sessionSongEntryRepository.create({
      sessionSongId: songId,
      sessionParticipantId: participant.id,
      sessionPartId: dto.sessionPartId,
      comment: dto.comment,
    });
    const savedEntry = await this.sessionSongEntryRepository.save(entry);

    return {
      entry: await this.mapSessionSongEntryToProto(
        sessionId,
        savedEntry,
        savedEntry.sessionPartId,
      ),
    };
  }

  async updateSongEntry(
    sessionId: number,
    songId: number,
    entryId: number,
    dto: UpdateSessionSongEntryDto,
    user: User,
  ): Promise<UpdateSongEntryResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const entry = await this.sessionSongEntryRepository.findOne({
      where: {
        id: entryId,
        sessionSongId: songId,
      },
    });
    if (!entry) {
      throw new NotFoundException(
        `Entry ${entryId} not found in song ${songId}`,
      );
    }

    const updatedEntry = await this.sessionSongEntryRepository.save({
      ...entry,
      comment: dto.comment,
    });

    return {
      entry: await this.mapSessionSongEntryToProto(
        sessionId,
        updatedEntry,
        entry.sessionPartId,
      ),
    };
  }

  async deleteSongEntry(
    sessionId: number,
    songId: number,
    entryId: number,
    user: User,
  ): Promise<DeleteSongEntryResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    const entry = await this.sessionSongEntryRepository.findOne({
      where: {
        id: entryId,
        sessionSongId: songId,
      },
    });

    if (!entry) {
      return { success: false };
    }

    await this.sessionSongEntryRepository.remove(entry);
    return { success: true };
  }

  private async mapSessionSongEntryToProto(
    sessionId: number,
    sessionSongEntry: SessionSongEntry,
    sessionPartId: number,
  ): Promise<ProtoSessionSongEntry> {
    const sessionPart =
      await this.sessionPartService.getSessionPart(sessionPartId);

    const sessionParticipant =
      await this.sessionParticipantService.getSessionParticipant(
        sessionId,
        sessionSongEntry.sessionParticipantId,
      );

    return {
      id: sessionSongEntry.id,
      comment: sessionSongEntry.comment,
      part: sessionPart,
      user: sessionParticipant.user,
    };
  }
}
