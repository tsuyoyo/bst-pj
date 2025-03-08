import { Injectable, OnModuleInit } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Area } from '../entities/area.entity';

@Injectable()
export class AreaService implements OnModuleInit {
  private areaCache: Area[] = [];

  constructor(
    @InjectRepository(Area)
    private readonly areaRepository: Repository<Area>,
  ) {}

  /**
   * アプリケーション起動時にすべてのエリアをキャッシュする
   */
  async onModuleInit() {
    await this.refreshCache();
    console.log('Area cache initialized with', this.areaCache.length, 'areas');
  }

  /**
   * キャッシュを更新する
   */
  async refreshCache(): Promise<void> {
    this.areaCache = await this.areaRepository.find();
  }

  /**
   * すべてのエリアを取得する
   */
  getAllAreas(): Area[] {
    return this.areaCache;
  }

  /**
   * IDでエリアを取得する
   */
  getAreaById(id: number): Area | undefined {
    return this.areaCache.find((area) => area.id === id);
  }

  /**
   * 都道府県IDでエリアをフィルタリングする
   */
  getAreaByPrefectureId(prefectureId: number): Area | undefined {
    return this.areaCache.find((area) => area.prefectureId === prefectureId);
  }
}
