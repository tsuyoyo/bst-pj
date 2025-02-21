import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SongPerformance } from '../entities/song-performance.entity';
import { RequiredPart } from '../entities/required-part.entity';
import { AddSessionSongDto } from './dto/add-session-song.dto';
import { User } from '../entities/user.entity';
import { AddSessionSongResponse } from '../proto/bst/v1/session_song_service';
import { SessionService } from '../session/session.service';
import { SongService } from '../song/song.service';
import { PartService } from '../part/part.service';
import { SessionPartService } from '../session-part/session-part.service';
import { SessionPart, SongPerformancePart } from 'src/proto/bst/v1/session';

@Injectable()
export class SessionSongService {
  constructor(
    @InjectRepository(SongPerformance)
    private readonly songPerformanceRepository: Repository<SongPerformance>,
    @InjectRepository(RequiredPart)
    private readonly requiredPartRepository: Repository<RequiredPart>,
    private readonly sessionService: SessionService,
    private readonly sessionPartService: SessionPartService,
    private readonly songService: SongService,
    private readonly partService: PartService,
  ) {}

  async addSessionSong(
    sessionId: number,
    request: AddSessionSongDto,
    user: User,
  ): Promise<AddSessionSongResponse> {
    await this.sessionService.verifySessionAccess(sessionId, user);

    // Save SongPerformance to DB
    const { song } = await this.songService.getSong(request.songId);
    if (!song) {
      throw new NotFoundException(`Song ${request.songId} not found`);
    }
    const songPerformance = this.songPerformanceRepository.create({
      sessionId,
      songId: request.songId,
    });
    const savedSongPerformance =
      await this.songPerformanceRepository.save(songPerformance);

    // Save RequiredParts to DB
    const requiredParts = await this.saveRequiredParts(
      savedSongPerformance.id,
      request.mandatoryPartIds,
    );
    const songPerformanceParts = this.mapSessionPartsToSongPerformanceParts(
      await this.getSessionParts(sessionId, user),
      requiredParts,
    );

    return {
      song: {
        song,
        entries: [],
        parts: songPerformanceParts,
      },
    };
  }

  private async saveRequiredParts(
    songPerformanceId: number,
    mandatorySessionPartIds: number[],
  ): Promise<RequiredPart[]> {
    const verifySessionPartId = async (sessionPartId: number) =>
      await this.sessionPartService.getSessionPart(sessionPartId);

    return await Promise.all(
      mandatorySessionPartIds.map(async (sessionPartId) => {
        await verifySessionPartId(sessionPartId);
        const requiredPart = this.requiredPartRepository.create({
          songPerformanceId,
          sessionPartId,
        });
        return await this.requiredPartRepository.save(requiredPart);
      }),
    );
  }

  private async getSessionParts(
    sessionId: number,
    user: User,
  ): Promise<SessionPart[]> {
    const { parts } = await this.sessionPartService.listSessionParts(
      sessionId,
      user,
    );
    return parts;
  }

  private mapSessionPartsToSongPerformanceParts(
    sessionParts: SessionPart[],
    requiredParts: RequiredPart[],
  ): SongPerformancePart[] {
    return sessionParts.map((part) => ({
      part: part,
      isRequired: requiredParts.some(
        (rp) => rp.sessionPartId === part?.part?.id,
      ),
    }));
  }
}
