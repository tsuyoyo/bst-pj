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
import { StudioService } from './studio.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import {
  CreateStudioResponse,
  DeleteStudioResponse,
  GetStudioResponse,
  ListStudiosResponse,
  UpdateStudioResponse,
} from '../proto/bst/v1/studio_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { ListStudiosDto } from './dto/list-studio.dto';

@Controller('studios')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createStudio(
    @Body() request: CreateStudioDto,
    @CurrentUser() user: User,
  ): Promise<CreateStudioResponse> {
    return this.studioService.createStudio(
      request.name,
      request.description,
      request.locationId,
      user.id,
    );
  }

  @Get()
  async listStudios(
    // @Query() query: ListStudiosDto,
    @Query('pageSize') pageSize: number = 10,
    @Query('pageToken') pageToken: string | null = null,
    @Query('areaId') areaId: number | null = null,
  ): Promise<ListStudiosResponse> {
    return this.studioService.listStudios(pageSize, pageToken, areaId);
  }

  @Get(':id')
  async getStudio(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<GetStudioResponse> {
    return this.studioService.getStudio(id);
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateStudio(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdateStudioDto,
    @CurrentUser() user: User,
  ): Promise<UpdateStudioResponse> {
    return this.studioService.updateStudio(
      id,
      request.name,
      request.description,
      request.locationId,
      user.id,
    );
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteStudio(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeleteStudioResponse> {
    return this.studioService.deleteStudio(id);
  }
}
