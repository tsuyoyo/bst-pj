import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { AreaService } from './area.service';
import { Area } from '../entities/area.entity';

@Controller('areas')
export class AreaController {
  constructor(private readonly areaService: AreaService) {}

  @Get()
  async getAllAreas(): Promise<{ areas: Array<Area> }> {
    const areas = this.areaService.getAllAreas();
    return new Promise((resolve) => resolve({ areas }));
  }

  @Get(':id')
  async getAreaById(
    @Param('id', ParseIntPipe) id: number,
  ): Promise<{ area: Area | undefined }> {
    const area = this.areaService.getAreaById(id);
    return new Promise((resolve) => resolve({ area }));
  }
}
