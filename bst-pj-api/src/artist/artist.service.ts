import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, DataSource, QueryRunner } from 'typeorm';
import { Artist } from '../entities/artist.entity';
import { ArtistGenre } from '../entities/artist-genre.entity';
import { Genre } from '../entities/genre.entity';
import {
  CreateArtistResponse,
  DeleteArtistResponse,
  GetArtistResponse,
  ListArtistsResponse,
  UpdateArtistResponse,
} from '../proto/bst/v1/artist_service';
import { UpdateArtistDto } from './dto/update-artist.dto';

@Injectable()
export class ArtistService {
  constructor(
    @InjectRepository(Artist)
    private readonly artistRepository: Repository<Artist>,
    @InjectRepository(ArtistGenre)
    private readonly artistGenreRepository: Repository<ArtistGenre>,
    @InjectRepository(Genre)
    private readonly genreRepository: Repository<Genre>,
    private dataSource: DataSource,
  ) {}

  private async getGenresForArtist(
    artistId: number,
  ): Promise<Array<{ id: number; name: string }>> {
    const artistGenres = await this.artistGenreRepository.find({
      where: { artistId },
      relations: ['genre'],
    });

    return artistGenres.map((ag) => ({
      id: ag.genre.id,
      name: ag.genre.name,
    }));
  }

  private readonly mapEntityToProto = async (artist: Artist) => ({
    id: artist.id,
    name: artist.name,
    website: artist.website || '',
    updatedUserId: artist.updatedUserId,
    genres: await this.getGenresForArtist(artist.id),
  });

  private async saveArtistGenres(
    queryRunner: QueryRunner,
    artistId: number,
    userId: number,
    genreIds?: Array<number>,
  ): Promise<void> {
    await queryRunner.manager.delete(ArtistGenre, {
      artistId: artistId,
    });

    if (genreIds && genreIds.length > 0) {
      // Validate all genre IDs before saving
      for (const genreId of genreIds) {
        const genre = await this.genreRepository.findOne({
          where: { id: genreId },
        });
        if (!genre) {
          throw new NotFoundException(`Genre with ID ${genreId} not found`);
        }
      }

      // Save artist-genre relationships
      for (const genreId of genreIds) {
        const artistGenre = this.artistGenreRepository.create({
          artistId: artistId,
          genreId: genreId,
          updatedUserId: userId,
        });
        await queryRunner.manager.save(artistGenre);
      }
    }
  }

  async createArtist(
    name: string,
    website: string,
    userId: number,
    genreIds?: Array<number>,
  ): Promise<CreateArtistResponse> {
    const queryRunner = this.dataSource.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    try {
      const artist = this.artistRepository.create({
        name,
        website,
        updatedUserId: userId,
      });
      const savedArtist = await queryRunner.manager.save(artist);

      await this.saveArtistGenres(
        queryRunner,
        savedArtist.id,
        userId,
        genreIds,
      );
      await queryRunner.commitTransaction();

      return {
        artist: await this.mapEntityToProto(savedArtist),
      };
    } catch (err) {
      await queryRunner.rollbackTransaction();
      throw err;
    } finally {
      await queryRunner.release();
    }
  }

  async listArtists(): Promise<ListArtistsResponse> {
    const artists = await this.artistRepository.find();
    const mappedArtists = await Promise.all(artists.map(this.mapEntityToProto));
    return {
      artists: mappedArtists,
      nextPageToken: '',
      totalSize: artists.length,
    };
  }

  async getArtist(artistId: number): Promise<GetArtistResponse> {
    const artist = await this.artistRepository.findOne({
      where: { id: artistId },
    });

    if (!artist) {
      throw new NotFoundException('Artist not found');
    }

    return {
      artist: await this.mapEntityToProto(artist),
    };
  }

  async updateArtist(
    artistId: number,
    userId: number,
    request: UpdateArtistDto,
  ): Promise<UpdateArtistResponse> {
    const queryRunner = this.dataSource.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    try {
      const artist = await queryRunner.manager.findOne(Artist, {
        where: { id: artistId },
      });

      if (!artist) {
        throw new NotFoundException('Artist not found');
      }

      artist.name = request.name;
      artist.website = request.website;
      artist.updatedUserId = userId;

      const updatedArtist = await queryRunner.manager.save(artist);

      await this.saveArtistGenres(
        queryRunner,
        artistId,
        userId,
        request.genreIds,
      );
      await queryRunner.commitTransaction();

      return {
        artist: await this.mapEntityToProto(updatedArtist),
      };
    } catch (err) {
      await queryRunner.rollbackTransaction();
      throw err;
    } finally {
      await queryRunner.release();
    }
  }

  async deleteArtist(artistId: number): Promise<DeleteArtistResponse> {
    const artist = await this.artistRepository.findOne({
      where: { id: artistId },
    });

    if (!artist) {
      throw new NotFoundException('Artist not found');
    }

    await this.artistRepository.remove(artist);

    return {
      success: true,
    };
  }
}
