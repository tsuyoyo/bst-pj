import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Query,
  UseGuards,
} from '@nestjs/common';
import { ResourceService } from './resource.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateResourceDto } from './dto/create-resource.dto';
import {
  CreateResourceResponse,
  DeleteResourceResponse,
  GetResourceResponse,
  ListResourcesResponse,
} from '../proto/bst/v1/resource_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import { Resource_ResourceType } from '../proto/bst/v1/content';

@Controller('resources')
export class ResourceController {
  constructor(private readonly resourceService: ResourceService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createResource(
    @Body() request: CreateResourceDto,
    @CurrentUser() user: User,
  ): Promise<CreateResourceResponse> {
    return await this.resourceService.createResource(request, user.id);
  }

  @Get()
  async listResources(
    @Query('pageSize') pageSize?: number,
    @Query('pageToken') pageToken?: string,
    @Query('resourceType') resourceType?: Resource_ResourceType,
  ): Promise<ListResourcesResponse> {
    return await this.resourceService.listResources(
      pageSize,
      pageToken,
      resourceType,
    );
  }

  @Get(':id')
  async getResource(@Param('id') id: string): Promise<GetResourceResponse> {
    return await this.resourceService.getResource(parseInt(id, 10));
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteResource(
    @Param('id') id: string,
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    @CurrentUser() user: User,
  ): Promise<DeleteResourceResponse> {
    return await this.resourceService.deleteResource(parseInt(id, 10));
  }
}
