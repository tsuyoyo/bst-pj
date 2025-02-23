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
import { SessionPartService } from './session-part.service';
import { AddSessionPartDto } from './dto/add-session-part.dto';
import { UpdateSessionPartDto } from './dto/update-session-part.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import {
  AddSessionPartResponse,
  DeleteSessionPartResponse,
  ListSessionPartsResponse,
  UpdateSessionPartResponse,
} from '../proto/bst/v1/session_part_service';
import { User } from '../entities/user.entity';
import { CurrentUser } from '../auth/user.decorator';

@Controller('sessions/:sessionId/parts')
@UseGuards(JwtAuthGuard)
export class SessionPartController {
  constructor(private readonly sessionPartService: SessionPartService) {}

  @Get()
  async listSessionParts(
    @Param('sessionId') sessionId: number,
  ): Promise<ListSessionPartsResponse> {
    return await this.sessionPartService.listSessionParts(sessionId);
  }

  @Post()
  async addSessionPart(
    @Param('sessionId') sessionId: number,
    @Body() addSessionPartDto: AddSessionPartDto,
    @CurrentUser() user: User,
  ): Promise<AddSessionPartResponse> {
    return await this.sessionPartService.addSessionPart(
      sessionId,
      addSessionPartDto,
      user,
    );
  }

  @Put(':sessionPartId')
  async updateSessionPart(
    @Param('sessionId') sessionId: number,
    @Param('sessionPartId') sessionPartId: number,
    @Body() updateSessionPartDto: UpdateSessionPartDto,
    @CurrentUser() user: User,
  ): Promise<UpdateSessionPartResponse> {
    return await this.sessionPartService.updateSessionPart(
      sessionId,
      sessionPartId,
      updateSessionPartDto,
      user,
    );
  }

  @Delete(':sessionPartId')
  async deleteSessionPart(
    @Param('sessionId') sessionId: number,
    @Param('sessionPartId') sessionPartId: number,
    @CurrentUser() user: User,
  ): Promise<DeleteSessionPartResponse> {
    return await this.sessionPartService.deleteSessionPart(
      sessionId,
      sessionPartId,
      user,
    );
  }
}
