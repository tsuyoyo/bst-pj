import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { SessionParticipantService } from './session-participant.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  AddSessionParticipantResponse,
  DeleteSessionParticipantResponse,
  ListSessionParticipantsResponse,
  SetSessionParticipantIsAdminResponse,
  AddSessionParticipantPartsResponse,
  UpdateSessionParticipantStatusResponse,
} from '../proto/bst/v1/session_participant_service';
import { AddSessionParticipantDto } from './dto/add-session-participant.dto';
import { SetSessionParticipantIsAdminDto } from './dto/set-session-participant-is-admin.dto';
import { AddSessionParticipantPartsDto } from './dto/add-session-participant-parts.dto';
import { UpdateSessionParticipantStatusDto } from './dto/update-session-participant-status.dto';

@Controller('sessions/:sessionId/participants')
@UseGuards(JwtAuthGuard)
export class SessionParticipantController {
  constructor(
    private readonly sessionParticipantService: SessionParticipantService,
  ) {}

  @Get()
  async listSessionParticipants(
    @Param('sessionId') sessionId: number,
  ): Promise<ListSessionParticipantsResponse> {
    return await this.sessionParticipantService.listSessionParticipants(
      sessionId,
    );
  }

  @Post()
  async addSessionParticipant(
    @Param('sessionId') sessionId: number,
    @Body() addSessionParticipantDto: AddSessionParticipantDto,
    @CurrentUser() user: User,
  ): Promise<AddSessionParticipantResponse> {
    return await this.sessionParticipantService.addSessionParticipant(
      sessionId,
      addSessionParticipantDto,
      user,
    );
  }

  @Delete(':participantId')
  async deleteSessionParticipant(
    @Param('sessionId') sessionId: number,
    @Param('participantId') participantId: number,
    @CurrentUser() user: User,
  ): Promise<DeleteSessionParticipantResponse> {
    return await this.sessionParticipantService.deleteSessionParticipant(
      sessionId,
      participantId,
      user,
    );
  }

  @Post(':participantId/is_admin')
  async setSessionParticipantIsAdmin(
    @Param('sessionId') sessionId: number,
    @Param('participantId') participantId: number,
    @Body() dto: SetSessionParticipantIsAdminDto,
    @CurrentUser() user: User,
  ): Promise<SetSessionParticipantIsAdminResponse> {
    return await this.sessionParticipantService.setSessionParticipantIsAdmin(
      sessionId,
      participantId,
      dto,
      user,
    );
  }

  @Post(':participantId/secondary_parts')
  async addSessionParticipantParts(
    @Param('sessionId') sessionId: number,
    @Param('participantId') participantId: number,
    @Body() dto: AddSessionParticipantPartsDto,
    @CurrentUser() user: User,
  ): Promise<AddSessionParticipantPartsResponse> {
    return await this.sessionParticipantService.addSessionParticipantParts(
      sessionId,
      participantId,
      dto,
      user,
    );
  }

  @Put(':participantId/status')
  async updateSessionParticipantStatus(
    @Param('sessionId') sessionId: number,
    @Param('participantId') participantId: number,
    @Body() dto: UpdateSessionParticipantStatusDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionParticipantStatusResponse> {
    return await this.sessionParticipantService.updateSessionParticipantStatus(
      sessionId,
      participantId,
      dto,
      user,
    );
  }
}
