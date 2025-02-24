import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { SessionSong } from '../entities/session-song';
import { RequiredPart } from '../entities/required-part.entity';
import { AddSessionSongDto } from './dto/add-session-song.dto';
import { UpdateSessionSongDto } from './dto/update-session-song.dto';
import { User } from '../entities/user.entity';
import {
  AddSessionSongResponse,
  DeleteSessionSongResponse,
  ListSessionSongsResponse,
  UpdateSessionSongResponse,
} from '../proto/bst/v1/session_song_service';
import { SongService } from '../song/song.service';
import { PartService } from '../part/part.service';
import { SessionPartService } from '../session-part/session-part.service';
import {
  SessionPart as ProtoSessionPart,
  SessionSongPart as ProtoSessionSongPart,
  SessionSong as ProtoSessionSong,
} from '../proto/bst/v1/session';
import { SessionVerifyAccessService } from '../session/session-verify-access.service';

@Injectable()
export class SessionSongService {
  constructor(
    @InjectRepository(SessionSong)
    private readonly sessionSongRepository: Repository<SessionSong>,
    @InjectRepository(RequiredPart)
    private readonly requiredPartRepository: Repository<RequiredPart>,
    private readonly sessionVerifyAccessService: SessionVerifyAccessService,
    private readonly sessionPartService: SessionPartService,
    private readonly songService: SongService,
    private readonly partService: PartService,
  ) {}

  async addSessionSong(
    sessionId: number,
    request: AddSessionSongDto,
    user: User,
  ): Promise<AddSessionSongResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);

    // Save SessionSong to DB
    const { song } = await this.songService.getSong(request.songId);
    if (!song) {
      throw new NotFoundException(`Song ${request.songId} not found`);
    }
    const sessionSong = this.sessionSongRepository.create({
      sessionId,
      songId: request.songId,
    });
    const { id: sessionSongId } =
      await this.sessionSongRepository.save(sessionSong);

    // Save RequiredParts to DB
    const requiredParts = await this.saveRequiredParts(
      sessionSongId,
      request.mandatoryPartIds,
    );
    const sessionParts = await this.mapSessionPartsToProto(
      sessionId,
      requiredParts,
    );

    return {
      song: {
        id: sessionSongId,
        song,
        entries: [],
        parts: sessionParts,
      },
    };
  }

  async getSessionSong(
    sessionId: number,
    songId: number,
  ): Promise<ProtoSessionSong> {
    const sessionSong = await this.sessionSongRepository.findOne({
      where: { id: songId, sessionId },
    });
    if (!sessionSong) {
      throw new NotFoundException(
        `Song ${songId} not found in session ${sessionId}`,
      );
    }
    return this.mapSessionSongToProto(sessionId, sessionSong);
  }

  async listSessionSongs(sessionId: number): Promise<ListSessionSongsResponse> {
    const sessionSongs = await this.sessionSongRepository.find({
      where: { sessionId },
    });
    const protoSessionSongs = await Promise.all(
      sessionSongs.map((sessionSong) =>
        this.mapSessionSongToProto(sessionId, sessionSong),
      ),
    );
    return { songs: protoSessionSongs };
  }

  async updateSessionSong(
    sessionId: number,
    songId: number,
    updateSessionSongDto: UpdateSessionSongDto,
    user: User,
  ): Promise<UpdateSessionSongResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);
    const sessionSong = await this.sessionSongRepository.findOne({
      where: { id: songId, sessionId },
    });
    if (!sessionSong) {
      throw new NotFoundException(
        `SongPerformance with ID ${songId} not found`,
      );
    }
    // Check if the mandatoryPartIds are being updated.
    const requiredParts = await this.requiredPartRepository.find({
      where: { sessionSongId: sessionSong.id },
    });
    const isMatching =
      requiredParts.length === updateSessionSongDto.mandatoryPartIds.length &&
      requiredParts.every((part) =>
        updateSessionSongDto.mandatoryPartIds.includes(part.id),
      );
    if (!isMatching) {
      await this.requiredPartRepository.delete(
        requiredParts.map((part) => part.id),
      );
      await this.saveRequiredParts(
        sessionSong.id,
        updateSessionSongDto.mandatoryPartIds,
      );
    }

    const protoSessionSong = await this.mapSessionSongToProto(
      sessionId,
      sessionSong,
    );
    return {
      song: protoSessionSong,
    };
  }

  async deleteSessionSong(
    sessionId: number,
    songId: number,
    user: User,
  ): Promise<DeleteSessionSongResponse> {
    await this.sessionVerifyAccessService.verifySessionAccess(sessionId, user);
    const sessionSong = await this.sessionSongRepository.findOne({
      where: { id: songId, sessionId },
    });
    if (!sessionSong) {
      throw new NotFoundException(`SessionSong with ID ${songId} not found`);
    }
    const deletedSessionSong = await this.sessionSongRepository.delete(songId);
    return {
      success: deletedSessionSong.affected
        ? deletedSessionSong.affected > 0
        : false,
    };
  }

  private async saveRequiredParts(
    sessionSongId: number,
    mandatorySessionPartIds: number[],
  ): Promise<RequiredPart[]> {
    const verifySessionPartId = async (sessionPartId: number) =>
      await this.sessionPartService.getSessionPartEntity(sessionPartId);

    return await Promise.all(
      mandatorySessionPartIds.map(async (sessionPartId) => {
        await verifySessionPartId(sessionPartId);
        const requiredPart = this.requiredPartRepository.create({
          sessionSongId,
          sessionPartId,
        });
        return await this.requiredPartRepository.save(requiredPart);
      }),
    );
  }

  private async getSessionParts(
    sessionId: number,
  ): Promise<ProtoSessionPart[]> {
    const { parts } = await this.sessionPartService.listSessionParts(sessionId);
    return parts;
  }

  private async mapSessionSongToProto(
    sessionId: number,
    sessionSong: SessionSong,
  ): Promise<ProtoSessionSong> {
    const { song: protoSong } = await this.songService.getSong(
      sessionSong.song.id,
    );
    const requiredParts = await this.requiredPartRepository.find({
      where: { sessionSongId: sessionSong.id },
    });
    const protoSessionParts = await this.mapSessionPartsToProto(
      sessionId,
      requiredParts,
    );
    return {
      id: sessionSong.id,
      song: protoSong,
      entries: [],
      parts: protoSessionParts,
    };
  }

  private async mapSessionPartsToProto(
    sessionId: number,
    requiredParts: RequiredPart[],
  ): Promise<ProtoSessionSongPart[]> {
    const sessionParts = await this.getSessionParts(sessionId);
    return sessionParts.map((part) => ({
      id: part.id,
      part: part,
      isRequired: requiredParts.some(
        (rp) => rp.sessionPartId === part?.part?.id,
      ),
    }));
  }
}
