import { Body, Controller, Post, UseGuards } from '@nestjs/common';
import { SessionService } from './session.service';
import { CreateSessionDto } from './dto/create-session.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateSessionResponse } from '../proto/bst/v1/session_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';

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
}
