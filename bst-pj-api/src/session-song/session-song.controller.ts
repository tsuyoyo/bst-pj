import {
  Body,
  Controller,
  Param,
  Post,
  Get,
  Put,
  Delete,
  UseGuards,
} from '@nestjs/common';
import { SessionSongService } from './session-song.service';
import { AddSessionSongDto } from './dto/add-session-song.dto';
import { UpdateSessionSongDto } from './dto/update-session-song.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import {
  AddSessionSongResponse,
  ListSessionSongsResponse,
  UpdateSessionSongResponse,
  DeleteSessionSongResponse,
} from '../proto/bst/v1/session_song_service';
import { User } from '../entities/user.entity';
import { CurrentUser } from '../auth/user.decorator';

@Controller('sessions/:sessionId/songs')
@UseGuards(JwtAuthGuard)
export class SessionSongController {
  constructor(private readonly sessionSongService: SessionSongService) {}

  @Post()
  async addSessionSong(
    @Param('sessionId') sessionId: number,
    @Body() addSessionSongDto: AddSessionSongDto,
    @CurrentUser() user: User,
  ): Promise<AddSessionSongResponse> {
    return await this.sessionSongService.addSessionSong(
      sessionId,
      addSessionSongDto,
      user,
    );
  }

  @Get()
  async listSessionSongs(
    @Param('sessionId') sessionId: number,
  ): Promise<ListSessionSongsResponse> {
    return await this.sessionSongService.listSessionSongs(sessionId);
  }

  @Put(':songId')
  async updateSessionSong(
    @Param('sessionId') sessionId: number,
    @Param('songId') songId: number,
    @Body() updateSessionSongDto: UpdateSessionSongDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionSongResponse> {
    return await this.sessionSongService.updateSessionSong(
      sessionId,
      songId,
      updateSessionSongDto,
      user,
    );
  }

  @Delete(':songId')
  async deleteSessionSong(
    @Param('sessionId') sessionId: number,
    @Param('songId') songId: number,
    @CurrentUser() user: User,
  ): Promise<DeleteSessionSongResponse> {
    return await this.sessionSongService.deleteSessionSong(
      sessionId,
      songId,
      user,
    );
  }
}
