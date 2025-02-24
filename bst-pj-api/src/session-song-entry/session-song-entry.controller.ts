import {
  Body,
  Controller,
  Delete,
  Param,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { SessionSongEntryService } from './session-song-entry.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  AddSongEntryResponse,
  UpdateSongEntryResponse,
  DeleteSongEntryResponse,
} from '../proto/bst/v1/session_song_entry_service';
import { AddSessionSongEntryDto } from './dto/add-session-song-entry.dto';
import { UpdateSessionSongEntryDto } from './dto/update-session-song-entry.dto';

@Controller('sessions/:sessionId/songs/:songId/entries')
@UseGuards(JwtAuthGuard)
export class SessionSongEntryController {
  constructor(
    private readonly sessionSongEntryService: SessionSongEntryService,
  ) {}

  @Post()
  async addSongEntry(
    @Param('sessionId') sessionId: number,
    @Param('songId') songId: number,
    @Body() dto: AddSessionSongEntryDto,
    @CurrentUser() user: User,
  ): Promise<AddSongEntryResponse> {
    return await this.sessionSongEntryService.addSongEntry(
      sessionId,
      songId,
      dto,
      user,
    );
  }

  @Put(':entryId')
  async updateSongEntry(
    @Param('sessionId') sessionId: number,
    @Param('songId') songId: number,
    @Param('entryId') entryId: number,
    @Body() dto: UpdateSessionSongEntryDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSongEntryResponse> {
    return await this.sessionSongEntryService.updateSongEntry(
      sessionId,
      songId,
      entryId,
      dto,
      user,
    );
  }

  @Delete(':entryId')
  async deleteSongEntry(
    @Param('sessionId') sessionId: number,
    @Param('songId') songId: number,
    @Param('entryId') entryId: number,
    @CurrentUser() user: User,
  ): Promise<DeleteSongEntryResponse> {
    return await this.sessionSongEntryService.deleteSongEntry(
      sessionId,
      songId,
      entryId,
      user,
    );
  }
}
