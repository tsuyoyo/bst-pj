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
import { PartService } from './part.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreatePartDto } from './dto/create-part.dto';
import { UpdatePartDto } from './dto/update-part.dto';
import {
  CreatePartResponse,
  DeletePartResponse,
  GetPartResponse,
  ListPartsResponse,
  UpdatePartResponse,
} from '../proto/bst/v1/part_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';

@Controller('parts')
export class PartController {
  constructor(private readonly partService: PartService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createPart(
    @Body() request: CreatePartDto,
    @CurrentUser() user: User,
  ): Promise<CreatePartResponse> {
    return this.partService.createPart(
      request.name,
      request.description,
      user.id,
    );
  }

  @Get()
  async listParts(
    @Query('pageSize', new ParseIntPipe()) pageSize: number = 10,
    @Query('pageToken') pageToken: string | null = null,
  ): Promise<ListPartsResponse> {
    return this.partService.listParts(pageSize, pageToken);
  }

  @Get(':id')
  async getPart(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<GetPartResponse> {
    return this.partService.getPart(id);
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updatePart(
    @Param('id', ParseIntPipe) id: number,
    @Body() request: UpdatePartDto,
    @CurrentUser() user: User,
  ): Promise<UpdatePartResponse> {
    return this.partService.updatePart(
      id,
      request.name,
      request.description,
      user.id,
    );
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deletePart(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<DeletePartResponse> {
    return this.partService.deletePart(id);
  }
}
