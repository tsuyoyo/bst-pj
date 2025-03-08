import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  Query,
  UseGuards,
} from '@nestjs/common';
import { StudioService } from './studio.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';

@Controller('studios')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createStudio(
    @Body() createStudioDto: CreateStudioDto,
    @CurrentUser() user: User,
  ) {
    return await this.studioService.createStudio(createStudioDto, user.id);
  }

  @Get()
  async listStudios(
    @Query('pageSize') pageSizeStr: string,
    @Query('pageToken') pageToken?: string,
    @Query('areaId') areaIdStr?: string,
  ) {
    const pageSize = pageSizeStr ? parseInt(pageSizeStr, 10) : 10;
    const areaId = areaIdStr ? parseInt(areaIdStr, 10) : undefined;
    return await this.studioService.listStudios(pageSize, pageToken, areaId);
  }

  @Get(':id')
  async getStudio(@Param('id') id: string) {
    return await this.studioService.getStudio(parseInt(id, 10));
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateStudio(
    @Param('id') id: string,
    @Body() updateStudioDto: UpdateStudioDto,
    @CurrentUser() user: User,
  ) {
    return await this.studioService.updateStudio(
      parseInt(id, 10),
      updateStudioDto,
      user.id,
    );
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteStudio(@Param('id') id: string) {
    return await this.studioService.deleteStudio(parseInt(id, 10));
  }
}
