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

@Controller('genres')
export class GenreController {
  constructor(private readonly genreService: GenreService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createGenre(
    @Body() request: CreateGenreDto,
  ): Promise<CreateGenreResponse> {
    const genre = await this.genreService.createGenre(request.name);
    return {
      genre,
    };
  }

  @Get()
  async listGenres(): Promise<ListGenresResponse> {
    const genres = await this.genreService.listGenres();
    return {
      genres,
    };
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateGenre(
    @Param('id') id: string,
    @Body() request: UpdateGenreDto,
  ): Promise<UpdateGenreResponse> {
    const genre = await this.genreService.updateGenre(
      parseInt(id, 10),
      request.name,
    );
    return {
      genre,
    };
  }
}
