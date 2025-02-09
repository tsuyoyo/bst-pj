import {
  Body,
  Controller,
  Get,
  Param,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { GenreService } from './genre.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateGenreDto } from './dto/create-genre.dto';
import { UpdateGenreDto } from './dto/update-genre.dto';
import {
  CreateGenreResponse,
  ListGenresResponse,
  UpdateGenreResponse,
} from 'src/proto/bst/v1/genre_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { Genre as ProtoGenre } from 'src/proto/bst/v1/content';
import { Genre } from 'src/entities/genre.entity';

@Controller('genres')
export class GenreController {
  constructor(private readonly genreService: GenreService) {}

  private readonly mapEntityToProto = (genre: Genre): ProtoGenre => ({
    id: genre.id,
    name: genre.name,
  });

  @Post()
  @UseGuards(JwtAuthGuard)
  async createGenre(
    @Body() request: CreateGenreDto,
    @CurrentUser() user: User,
  ): Promise<CreateGenreResponse> {
    console.log(`Creating genre by user: ${user.email}`);
    const genre = await this.genreService.createGenre(request.name, user.id);
    return {
      genre: this.mapEntityToProto(genre),
    };
  }

  @Get()
  async listGenres(): Promise<ListGenresResponse> {
    const genres = await this.genreService.listGenres();
    return {
      genres: genres.map(this.mapEntityToProto),
    };
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateGenre(
    @Param('id') id: string,
    @Body() request: UpdateGenreDto,
    @CurrentUser() user: User,
  ): Promise<UpdateGenreResponse> {
    console.log(`Updating genre by user: ${user.email}`);
    const genre = await this.genreService.updateGenre(
      parseInt(id, 10),
      request.name,
      user.id,
    );
    return {
      genre: this.mapEntityToProto(genre),
    };
  }
}
