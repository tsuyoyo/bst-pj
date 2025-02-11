import {
  Controller,
  Post,
  Get,
  Put,
  Delete,
  Body,
  Param,
  Query,
  UseGuards,
} from '@nestjs/common';
import { LocationService } from './location.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';
import {
  CreateLocationResponse,
  ListLocationsResponse,
  GetLocationResponse,
  UpdateLocationResponse,
  DeleteLocationResponse,
} from '../proto/bst/v1/location_service';
import { CreateLocationDto } from './dto/create-location.dto';
import { UpdateLocationDto } from './dto/update-location.dto';
import { ListLocationsDto } from './dto/list-locations.dto';
import { LocationMapper } from './mapper/location.mapper';

@Controller('locations')
@UseGuards(JwtAuthGuard)
export class LocationController {
  constructor(private readonly locationService: LocationService) {}

  @Post()
  async createLocation(
    @Body() createLocationDto: CreateLocationDto,
    @CurrentUser() user: User,
  ): Promise<CreateLocationResponse> {
    const location = await this.locationService.createLocation(
      createLocationDto.name,
      createLocationDto.googleMapsUrl || null,
      createLocationDto.additionalInfo || null,
      createLocationDto.areaId,
      user.id,
    );

    return { location: LocationMapper.toProto(location) };
  }

  @Get()
  async listLocations(
    @Query() query: ListLocationsDto,
  ): Promise<ListLocationsResponse> {
    const { locations, nextPageToken, totalSize } =
      await this.locationService.listLocations(
        query.pageSize || 10,
        query.pageToken || null,
        query.areaId,
      );

    return {
      locations: LocationMapper.toProtoList(locations),
      nextPageToken: nextPageToken || '',
      totalSize: totalSize,
    };
  }

  @Get(':id')
  async getLocation(@Param('id') id: number): Promise<GetLocationResponse> {
    const location = await this.locationService.getLocation(id);
    return { location: LocationMapper.toProto(location) };
  }

  @Put(':id')
  async updateLocation(
    @Param('id') id: number,
    @Body() updateLocationDto: UpdateLocationDto,
    @CurrentUser() user: User,
  ): Promise<UpdateLocationResponse> {
    const location = await this.locationService.updateLocation(
      id,
      updateLocationDto.name,
      updateLocationDto.googleMapsUrl,
      updateLocationDto.additionalInfo,
      updateLocationDto.areaId,
      user.id,
    );

    return { location: LocationMapper.toProto(location) };
  }

  @Delete(':id')
  async deleteLocation(
    @Param('id') id: number,
  ): Promise<DeleteLocationResponse> {
    const success = await this.locationService.deleteLocation(id);
    return { success };
  }
}
