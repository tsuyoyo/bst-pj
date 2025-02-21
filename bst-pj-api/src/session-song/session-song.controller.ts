import { Body, Controller, Param, Post, UseGuards } from '@nestjs/common';
import { SessionSongService } from './session-song.service';
import { AddSessionSongDto } from './dto/add-session-song.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { AddSessionSongResponse } from '../proto/bst/v1/session_song_service';
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
}
