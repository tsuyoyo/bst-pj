import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Song } from '../entities/song.entity';
import { Artist } from '../entities/artist.entity';
import { CreateSongDto } from './dto/create-song.dto';
import { UpdateSongDto } from './dto/update-song.dto';
import {
  CreateSongResponse,
  DeleteSongResponse,
  GetSongResponse,
  ListSongsResponse,
  UpdateSongResponse,
} from '../proto/bst/v1/song_service';

@Injectable()
export class SongService {
  constructor(
    @InjectRepository(Song)
    private readonly songRepository: Repository<Song>,
    @InjectRepository(Artist)
    private readonly artistRepository: Repository<Artist>,
  ) {}

  async createSong(
    request: CreateSongDto,
    userId: number,
  ): Promise<CreateSongResponse> {
    const artist = await this.artistRepository.findOne({
      where: { id: request.artistId },
    });
    if (!artist) {
      throw new NotFoundException('Artist not found');
    }

    const song = this.songRepository.create({
      title: request.title,
      artistId: request.artistId,
      description: request.description,
      updatedUserId: userId,
    });

    await this.songRepository.save(song);

    return {
      song: {
        id: song.id,
        title: song.title,
        artist: {
          id: artist.id,
          name: artist.name,
          website: artist.website || '',
          genres: [],
        },
        resources: [],
      },
    };
  }

  async listSongs(
    pageSize: number,
    pageToken: string | null,
  ): Promise<ListSongsResponse> {
    const [songs, totalCount] = await this.songRepository.findAndCount({
      relations: ['artist'],
      take: pageSize,
      skip: pageToken ? parseInt(pageToken, 10) : 0,
    });

    return {
      songs: songs.map((song) => ({
        id: song.id,
        title: song.title,
        artist: {
          id: song.artist.id,
          name: song.artist.name,
          website: song.artist.website || '',
          genres: [],
        },
        resources: [],
      })),
      nextPageToken: totalCount > pageSize ? String(pageSize) : '',
      totalSize: totalCount,
    };
  }

  async getSong(id: number): Promise<GetSongResponse> {
    const song = await this.songRepository.findOne({
      where: { id },
      relations: ['artist'],
    });

    if (!song) {
      throw new NotFoundException('Song not found');
    }

    return {
      song: {
        id: song.id,
        title: song.title,
        artist: {
          id: song.artist.id,
          name: song.artist.name,
          website: song.artist.website || '',
          genres: [],
        },
        resources: [],
      },
    };
  }

  async updateSong(
    id: number,
    request: UpdateSongDto,
    userId: number,
  ): Promise<UpdateSongResponse> {
    const song = await this.songRepository.findOne({
      where: { id },
      relations: ['artist'],
    });

    if (!song) {
      throw new NotFoundException('Song not found');
    }

    const artist = await this.artistRepository.findOne({
      where: { id: request.artistId },
    });
    if (!artist) {
      throw new NotFoundException('Artist not found');
    }

    song.title = request.title;
    song.artistId = request.artistId;
    song.description = request.description;
    song.updatedUserId = userId;

    await this.songRepository.save(song);

    return {
      song: {
        id: song.id,
        title: song.title,
        artist: {
          id: artist.id,
          name: artist.name,
          website: artist.website || '',
          genres: [],
        },
        resources: [],
      },
    };
  }

  async deleteSong(id: number): Promise<DeleteSongResponse> {
    const song = await this.songRepository.findOne({ where: { id } });
    if (!song) {
      throw new NotFoundException('Song not found');
    }

    await this.songRepository.remove(song);

    return { success: true };
  }
}
