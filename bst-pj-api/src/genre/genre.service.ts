import {
  ConflictException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Genre } from '../entities/genre.entity';

@Injectable()
export class GenreService {
  constructor(
    @InjectRepository(Genre)
    private readonly genreRepository: Repository<Genre>,
  ) {}

  async createGenre(name: string, userId: number): Promise<Genre> {
    const existingGenre = await this.genreRepository.findOne({
      where: { name },
    });
    if (existingGenre) {
      throw new ConflictException(`Genre "${name}" already exists`);
    }

    const genre = this.genreRepository.create({
      name,
      updatedUserId: userId,
    });
    return await this.genreRepository.save(genre);
  }

  async listGenres(): Promise<Array<Genre>> {
    return await this.genreRepository.find();
  }

  async updateGenre(id: number, name: string, userId: number) {
    const genre = await this.genreRepository.findOne({
      where: { id },
    });
    if (!genre) {
      throw new NotFoundException('Not found the genre you want to update');
    }

    const existingGenre = await this.genreRepository.findOne({
      where: { name },
    });
    if (existingGenre) {
      throw new ConflictException(`Genre "${name}"already exists`);
    }

    genre.name = name;
    genre.updatedUserId = userId;

    return await this.genreRepository.save(genre);
  }
}
