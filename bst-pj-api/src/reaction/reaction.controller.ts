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
import { ReactionService } from './reaction.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateReactionTypeDto } from './dto/create-reaction-type.dto';
import { UpdateReactionTypeDto } from './dto/update-reaction-type.dto';
import { ListReactionTypesDto } from './dto/list-reaction-types.dto';
import { CreateReactionDto } from './dto/create-reaction.dto';
import { ListReactionsDto } from './dto/list-reactions.dto';
import {
  CreateReactionTypeResponse,
  DeleteReactionTypeResponse,
  GetReactionTypeResponse,
  ListReactionTypesResponse,
  UpdateReactionTypeResponse,
  CreateReactionResponse,
  GetReactionResponse,
  ListReactionsResponse,
  DeleteReactionResponse,
} from '../proto/bst/v1/reaction_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';

@Controller()
export class ReactionController {
  constructor(private readonly reactionService: ReactionService) {}

  // ReactionType endpoints
  @Post('reaction-types')
  @UseGuards(JwtAuthGuard)
  async createReactionType(
    @Body() request: CreateReactionTypeDto,
    @CurrentUser() user: User,
  ): Promise<CreateReactionTypeResponse> {
    return this.reactionService.createReactionType(request, user.id);
  }

  @Get('reaction-types')
  async listReactionTypes(
    @Query() query: ListReactionTypesDto,
  ): Promise<ListReactionTypesResponse> {
    return this.reactionService.listReactionTypes(query);
  }

  @Get('reaction-types/:id')
  async getReactionType(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<GetReactionTypeResponse> {
    return this.reactionService.getReactionType(id);
  }

  @Put('reaction-types/:id')
  @UseGuards(JwtAuthGuard)
  async updateReactionType(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateReactionTypeDto,
    @CurrentUser() user: User,
  ): Promise<UpdateReactionTypeResponse> {
    return this.reactionService.updateReactionType(
      {
        ...request,
        reactionTypeId: id,
      },
      user.id,
    );
  }

  @Delete('reaction-types/:id')
  @UseGuards(JwtAuthGuard)
  async deleteReactionType(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeleteReactionTypeResponse> {
    return this.reactionService.deleteReactionType(id);
  }

  // Reaction endpoints
  @Post('reactions')
  @UseGuards(JwtAuthGuard)
  async createReaction(
    @Body() request: CreateReactionDto,
    @CurrentUser() user: User,
  ): Promise<CreateReactionResponse> {
    return this.reactionService.createReaction(request, user.id);
  }

  @Get('reactions')
  async listReactions(
    @Query() query: ListReactionsDto,
  ): Promise<ListReactionsResponse> {
    return this.reactionService.listReactions(query);
  }

  @Get('reactions/:id')
  async getReaction(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<GetReactionResponse> {
    return this.reactionService.getReaction(id);
  }

  @Delete('reactions/:id')
  @UseGuards(JwtAuthGuard)
  async deleteReaction(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeleteReactionResponse> {
    return this.reactionService.deleteReaction(id);
  }
}
