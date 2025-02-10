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
import { ArtistService } from './artist.service';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { CreateArtistDto } from './dto/create-artist.dto';
import { UpdateArtistDto } from './dto/update-artist.dto';
import {
  CreateArtistResponse,
  DeleteArtistResponse,
  GetArtistResponse,
  ListArtistsResponse,
  UpdateArtistResponse,
} from '../proto/bst/v1/artist_service';
import { CurrentUser } from '../auth/user.decorator';
import { User } from '../entities/user.entity';

@Controller('artists')
export class ArtistController {
  constructor(private readonly artistService: ArtistService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createArtist(
    @Body() request: CreateArtistDto,
    @CurrentUser() user: User,
  ): Promise<CreateArtistResponse> {
    return await this.artistService.createArtist(
      request.name,
      request.website,
      user.id,
      request.genreIds,
    );
  }

  @Get()
  async listArtists(): Promise<ListArtistsResponse> {
    return await this.artistService.listArtists();
  }

  @Get(':id')
  async getArtist(@Param('id') id: string): Promise<GetArtistResponse> {
    return await this.artistService.getArtist(parseInt(id, 10));
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  async updateArtist(
    @Param('id') id: string,
    @Body() request: UpdateArtistDto,
    @CurrentUser() user: User,
  ): Promise<UpdateArtistResponse> {
    return await this.artistService.updateArtist(
      parseInt(id, 10),
      user.id,
      request,
    );
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  async deleteArtist(
    @Param('id') id: string,
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    @CurrentUser() _user: User,
  ): Promise<DeleteArtistResponse> {
    return await this.artistService.deleteArtist(parseInt(id, 10));
  }
}
