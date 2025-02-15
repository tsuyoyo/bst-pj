import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserArtist } from '../entities/user-artist.entity';
import { ArtistService } from '../artist/artist.service';
import { Artist as ProtoArtist } from 'src/proto/bst/v1/content';
@Injectable()
export class UserArtistService {
  constructor(
    @InjectRepository(UserArtist)
    private readonly userArtistRepository: Repository<UserArtist>,
    private readonly artistService: ArtistService,
  ) {}

  async getUserPreferredArtists(userId: number): Promise<ProtoArtist[]> {
    const userArtists = await this.userArtistRepository.find({
      where: { userId },
      relations: ['artist'],
    });

    const artistIds = userArtists.map((userArtist) => userArtist.artist.id);
    return this.artistService.getArtists(artistIds).then((res) => res.artists);
  }
}
