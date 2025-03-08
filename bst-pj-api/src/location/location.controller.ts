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
  Req,
} from '@nestjs/common';
import { LocationService } from './location.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from '../entities/user.entity';

import { CreateLocationDto } from './dto/create-location.dto';
import { UpdateLocationDto } from './dto/update-location.dto';
import { ListLocationsDto } from './dto/list-locations.dto';

@Controller('locations')
export class LocationController {
  constructor(private readonly locationService: LocationService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createLocation(
    @Body() createLocationDto: CreateLocationDto,
    @Req() req: { user: User },
  ) {
    const user = req.user;
    const location = await this.locationService.createLocation(
      createLocationDto,
      user.id,
    );
    return {
      location,
    };
  }

  @Get()
  async listLocations(@Query() query: ListLocationsDto) {
    const { pageSize = 10, pageToken, prefectureId } = query;
    const result = await this.locationService.listLocations(
      pageSize,
      pageToken,
      prefectureId,
    );
    return {
      locations: result.locations,
      nextPageToken: result.nextPageToken,
      totalSize: result.totalSize,
    };
  }

  @Get(':id')
  async getLocation(@Param('id') id: number) {
    const location = await this.locationService.getLocation(id);
    return {
      location,
    };
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateLocation(
    @Param('id') id: number,
    @Body() updateLocationDto: UpdateLocationDto,
    @Req() req: { user: User },
  ) {
    const user = req.user;
    const location = await this.locationService.updateLocation(
      id,
      updateLocationDto,
      user.id,
    );
    return {
      location,
    };
  }

  @Delete(':id')
  async deleteLocation(@Param('id') id: number) {
    const success = await this.locationService.deleteLocation(id);
    return {
      success,
    };
  }
}
