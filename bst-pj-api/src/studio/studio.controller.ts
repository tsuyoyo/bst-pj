import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  UseGuards,
  Query,
  Put,
  Req,
  ParseIntPipe,
} from '@nestjs/common';
import { StudioService } from './studio.service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from '../entities/user.entity';

@Controller('studios')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createStudio(
    @Body() createStudioDto: CreateStudioDto,
    @Req() req: { user: User },
  ) {
    const userId = req.user.id;
    return this.studioService.createStudio(createStudioDto, userId);
  }

  @Get()
  async listStudios(
    @Query('pageSize', ParseIntPipe) pageSize: number,
    @Query('pageToken') pageToken: string | null,
    @Query('prefectureId', ParseIntPipe) prefectureId: number | null,
  ) {
    return this.studioService.listStudios(pageSize, pageToken, prefectureId);
  }

  @Get(':id')
  async getStudio(@Param('id', ParseIntPipe) id: number) {
    return this.studioService.getStudio(id);
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateStudio(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateStudioDto: UpdateStudioDto,
    @Req() req: { user: User },
  ) {
    const userId = req.user.id;
    return this.studioService.updateStudio(id, updateStudioDto, userId);
  }

  @Delete(':id')
  async deleteStudio(@Param('id', ParseIntPipe) id: number) {
    return this.studioService.deleteStudio(id);
  }
}
