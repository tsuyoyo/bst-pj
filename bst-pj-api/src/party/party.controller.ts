import {
  Controller,
  Get,
  Post,
  Put,
  Delete,
  Body,
  Param,
  UseGuards,
  ParseIntPipe,
} from '@nestjs/common';
import { PartyService } from './party.service';
import { CreatePartyDto } from './dto/create-party.dto';
import { UpdatePartyDto } from './dto/update-party.dto';
import {
  CreatePartyResponse,
  GetPartyResponse,
  UpdatePartyResponse,
  DeletePartyResponse,
  AddPartyParticipantResponse,
  RemovePartyParticipantResponse,
} from '../proto/bst/v1/party_service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { AddPartyParticipantDto } from './dto/add-participant.dto';
import { User } from '../entities/user.entity';
import { addParticipantMapper } from './mapper/add-participant.mapper';

@Controller('party')
export class PartyController {
  constructor(private readonly partyService: PartyService) {}

  @Post(':sessionId')
  @UseGuards(JwtAuthGuard)
  async createParty(
    @Param('sessionId', ParseIntPipe) sessionId: number,
    @Body() createPartyDto: CreatePartyDto,
    @CurrentUser() user: User,
  ): Promise<CreatePartyResponse> {
    return await this.partyService.createParty(sessionId, createPartyDto, user);
  }

  @Get(':sessionId')
  @UseGuards(JwtAuthGuard)
  async getParty(
    @Param('sessionId', ParseIntPipe) sessionId: number,
  ): Promise<GetPartyResponse> {
    return await this.partyService.getParty(sessionId);
  }

  @Put(':sessionId')
  @UseGuards(JwtAuthGuard)
  async updateParty(
    @Param('sessionId', ParseIntPipe) sessionId: number,
    @Body() updatePartyDto: UpdatePartyDto,
    @CurrentUser() user: User,
  ): Promise<UpdatePartyResponse> {
    return await this.partyService.updateParty(sessionId, updatePartyDto, user);
  }

  @Delete(':sessionId')
  @UseGuards(JwtAuthGuard)
  async deleteParty(
    @Param('sessionId', ParseIntPipe) sessionId: number,
    @CurrentUser() user: User,
  ): Promise<DeletePartyResponse> {
    return await this.partyService.deleteParty(sessionId, user);
  }

  @Post(':sessionId/participant')
  @UseGuards(JwtAuthGuard)
  async addParticipant(
    @Param('sessionId', ParseIntPipe) sessionId: number,
    @Body() request: AddPartyParticipantDto,
    @CurrentUser() user: User,
  ): Promise<AddPartyParticipantResponse> {
    const { role, status } = addParticipantMapper(request);
    return await this.partyService.addParticipant(
      sessionId,
      role,
      status,
      user,
    );
  }

  // TODO: Updateをここに書く

  @Delete(':sessionId/participant')
  @UseGuards(JwtAuthGuard)
  async removeParticipant(
    @Param('sessionId', ParseIntPipe) sessionId: number,
    @CurrentUser() user: User,
  ): Promise<RemovePartyParticipantResponse> {
    return await this.partyService.removeParticipant(sessionId, user);
  }
}
