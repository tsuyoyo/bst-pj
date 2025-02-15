import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserGenre } from '../entities/user-genre.entity';
import { Genre as ProtoGenre } from '../proto/bst/v1/content';

@Injectable()
export class UserGenreService {
  constructor(
    @InjectRepository(UserGenre)
    private readonly userGenreRepository: Repository<UserGenre>,
  ) {}

  async getUserPreferredGenres(userId: number): Promise<ProtoGenre[]> {
    const userGenres = await this.userGenreRepository.find({
      where: { userId },
      relations: ['genre'],
    });

    return userGenres.map((userGenre) => ({
      id: userGenre.genre.id,
      name: userGenre.genre.name,
    }));
  }
}
