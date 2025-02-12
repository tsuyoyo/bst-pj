import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Query,
  UseGuards,
} from '@nestjs/common';
import { SongService } from './song.service';
import { CreateSongDto } from './dto/create-song.dto';
import { UpdateSongDto } from './dto/update-song.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  CreateSongResponse,
  DeleteSongResponse,
  GetSongResponse,
  ListSongsResponse,
  UpdateSongResponse,
} from '../proto/bst/v1/song_service';

@Controller('songs')
export class SongController {
  constructor(private readonly songService: SongService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createSong(
    @Body() request: CreateSongDto,
    @CurrentUser() user: User,
  ): Promise<CreateSongResponse> {
    return await this.songService.createSong(request, user.id);
  }

  @Get()
  async listSongs(
    @Query('pageSize', new ParseIntPipe()) pageSize: number = 10,
    @Query('pageToken') pageToken: string | null = null,
  ): Promise<ListSongsResponse> {
    return await this.songService.listSongs(pageSize, pageToken);
  }

  @Get(':id')
  async getSong(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<GetSongResponse> {
    return await this.songService.getSong(id);
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateSong(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateSongDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSongResponse> {
    return await this.songService.updateSong(id, request, user.id);
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteSong(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeleteSongResponse> {
    return await this.songService.deleteSong(id);
  }
}
