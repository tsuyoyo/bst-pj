import {
  Body,
  Controller,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { SessionService } from './session.service';
import { CreateSessionDto } from './dto/create-session.dto';
import { UpdateSessionDto } from './dto/update-session.dto';
import { UpdateSessionStatusDto } from './dto/update-session-status.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import {
  CreateSessionResponse,
  GetSessionResponse,
  UpdateSessionResponse,
  UpdateSessionStudioResponse,
  UpdateSessionStatusResponse,
  CancelSessionResponse,
} from '../proto/bst/v1/session_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { UpdateSessionStudioDto } from './dto/update-session-studio.dto';

@Controller('sessions')
@UseGuards(JwtAuthGuard)
export class SessionController {
  constructor(private readonly sessionService: SessionService) {}

  @Post()
  async createSession(
    @Body() createSessionDto: CreateSessionDto,
    @CurrentUser() user: User,
  ): Promise<CreateSessionResponse> {
    return await this.sessionService.createSession(createSessionDto, user);
  }

  @Get(':id')
  async getSession(
    @Param('id') id: number,
    @CurrentUser() user: User,
  ): Promise<GetSessionResponse> {
    return await this.sessionService.getSession(id, user);
  }

  @Put(':id')
  async updateSession(
    @Param('id') id: number,
    @Body() updateSessionDto: UpdateSessionDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionResponse> {
    return await this.sessionService.updateSession(id, updateSessionDto, user);
  }

  @Put(':id/status')
  async updateSessionStatus(
    @Param('id') id: number,
    @Body() updateSessionStatusDto: UpdateSessionStatusDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionStatusResponse> {
    return await this.sessionService.updateSessionStatus(
      id,
      updateSessionStatusDto,
      user,
    );
  }

  @Put(':id/cancel')
  async cancelSession(
    @Param('id') id: number,
    @CurrentUser() user: User,
  ): Promise<CancelSessionResponse> {
    return await this.sessionService.cancelSession(id, user);
  }

  @Put(':id/studio')
  async updateSessionStudio(
    @Param('id', ParseIntPipe) id: number,
    @Body() dto: UpdateSessionStudioDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionStudioResponse> {
    return await this.sessionService.updateSessionStudio(id, dto, user);
  }

  // Memo: 次はこの辺
  //   // POST /sessions/{id}/duplicate
  //   rpc DuplicateSession(DuplicateSessionRequest)
  //       returns (DuplicateSessionResponse);
}
