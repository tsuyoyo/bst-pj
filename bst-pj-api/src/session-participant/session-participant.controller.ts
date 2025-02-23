import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
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
} from '../proto/bst/v1/session_participant_service';
import { AddSessionParticipantDto } from './dto/add-session-participant.dto';

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
}
