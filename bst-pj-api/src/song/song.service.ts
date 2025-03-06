import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Song } from '../entities/song.entity';
import { Artist } from '../entities/artist.entity';
import { Resource } from '../entities/resource.entity';
import {
  CreateSongResponse,
  ListSongsResponse,
  GetSongResponse,
  UpdateSongResponse,
  DeleteSongResponse,
  AddSongResourceResponse,
  ListSongResourcesResponse,
  DeleteSongResourceResponse,
} from '../proto/bst/v1/song_service';
import { ResourceType } from '../entities/types/resource-type.enum';
import { ResourceTargetType } from '../entities/types/resource-target-type.enum';
import { Resource_ResourceType } from '../proto/bst/v1/content';
import { CreateSongDto } from './dto/create-song.dto';
import { UpdateSongDto } from './dto/update-song.dto';

@Injectable()
export class SongService {
  constructor(
    @InjectRepository(Song)
    private readonly songRepository: Repository<Song>,
    @InjectRepository(Artist)
    private readonly artistRepository: Repository<Artist>,
    @InjectRepository(Resource)
    private readonly resourceRepository: Repository<Resource>,
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
    try {
      const skip = pageToken ? parseInt(pageToken, 10) : 0;

      const [songs, totalCount] = await this.songRepository.findAndCount({
        relations: ['artist'],
        take: pageSize,
        skip: skip,
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
        nextPageToken:
          totalCount > skip + pageSize ? String(skip + pageSize) : '',
        totalSize: totalCount,
      };
    } catch (error) {
      console.error('Error in listSongs:', error);
      // エラーが発生した場合は空の結果を返す
      return {
        songs: [],
        nextPageToken: '',
        totalSize: 0,
      };
    }
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
    const song = await this.songRepository.findOne({
      where: { id },
    });
    if (!song) {
      throw new NotFoundException('Song not found');
    }

    await this.songRepository.remove(song);

    return {
      success: true,
    };
  }

  async addSongResource(
    songId: number,
    resourceId: number,
  ): Promise<AddSongResourceResponse> {
    const song = await this.songRepository.findOne({
      where: { id: songId },
    });
    if (!song) {
      throw new NotFoundException('Song not found');
    }

    const resource = await this.resourceRepository.findOne({
      where: { id: resourceId },
    });
    if (!resource) {
      throw new NotFoundException('Resource not found');
    }

    resource.targetType = ResourceTargetType.SONG;
    resource.targetId = songId;
    await this.resourceRepository.save(resource);

    return {
      success: true,
    };
  }

  async listSongResources(
    songId: number,
    pageSize: number,
    pageToken: number,
  ): Promise<ListSongResourcesResponse> {
    const song = await this.songRepository.findOne({
      where: { id: songId },
    });
    if (!song) {
      throw new NotFoundException('Song not found');
    }

    const [resources, totalCount] = await this.resourceRepository.findAndCount({
      where: {
        targetType: ResourceTargetType.SONG,
        targetId: songId,
      },
      take: pageSize,
      skip: pageToken,
    });

    return {
      resources: resources.map((resource) => ({
        id: resource.id,
        type: this.mapResourceType(resource.type),
        url: resource.url,
        name: resource.name,
        description: resource.description,
      })),
      nextPageToken:
        totalCount > pageToken + pageSize
          ? (pageToken + pageSize).toString()
          : '',
      totalSize: totalCount,
    };
  }

  async deleteSongResource(
    songId: number,
    resourceId: number,
  ): Promise<DeleteSongResourceResponse> {
    const resource = await this.resourceRepository.findOne({
      where: {
        id: resourceId,
        targetType: ResourceTargetType.SONG,
        targetId: songId,
      },
    });
    if (!resource) {
      throw new NotFoundException('Resource not found in song');
    }

    await this.resourceRepository.remove(resource);

    return {
      success: true,
    };
  }

  private mapResourceType(type: ResourceType): Resource_ResourceType {
    switch (type) {
      case ResourceType.IMAGE:
        return Resource_ResourceType.RESOURCE_TYPE_IMAGE;
      case ResourceType.VIDEO:
        return Resource_ResourceType.RESOURCE_TYPE_VIDEO;
      default:
        return Resource_ResourceType.RESOURCE_TYPE_UNSPECIFIED;
    }
  }
}
