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

  async createGenre(name: string): Promise<Genre> {
    const existingGenre = await this.genreRepository.findOne({
      where: { name },
    });
    if (existingGenre) {
      throw new ConflictException(`Genre "${name}" already exists`);
    }

    const genre = this.genreRepository.create({
      name,
    });
    return await this.genreRepository.save(genre);
  }

  async listGenres(): Promise<Array<Genre>> {
    return await this.genreRepository.find();
  }

  async updateGenre(id: number, name: string) {
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
    return await this.genreRepository.save(genre);
  }
}
