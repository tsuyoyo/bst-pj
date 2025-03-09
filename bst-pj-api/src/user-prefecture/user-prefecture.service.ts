import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserPrefecture } from '../entities/user-prefecture.entity';
import { Area as AreaEntity } from '../entities/area.entity';
import { Area } from '../proto/bst/v1/area';

/**
 * ユーザーの都道府県情報を管理するサービス
 */
@Injectable()
export class UserPrefectureService {
  constructor(
    @InjectRepository(UserPrefecture)
    private readonly userPrefectureRepository: Repository<UserPrefecture>,
    @InjectRepository(AreaEntity)
    private readonly areaRepository: Repository<AreaEntity>,
  ) {}

  /**
   * ユーザーの都道府県情報を取得する
   * @param userId ユーザーID
   * @returns 都道府県情報の配列
   */
  async getUserPrefectures(userId: number): Promise<Area[]> {
    const userPrefectures = await this.userPrefectureRepository.find({
      where: { userId },
      relations: ['area'],
    });

    return Promise.all(
      userPrefectures.map(async (up) => {
        const area =
          up.area ||
          (await this.areaRepository.findOne({
            where: { prefectureId: up.prefectureId },
          }));
        return {
          name: area?.name || '',
          prefectureId: up.prefectureId,
        };
      }),
    );
  }

  /**
   * ユーザーのメインの都道府県を取得する
   * @param userId ユーザーID
   * @returns メインの都道府県情報（存在しない場合はnull）
   */
  async getUserPrimaryPrefecture(userId: number): Promise<Area | null> {
    const userPrefecture = await this.userPrefectureRepository.findOne({
      where: { userId, isPrimary: true },
      relations: ['area'],
    });

    if (!userPrefecture || !userPrefecture.area) {
      return null;
    }

    return {
      name: userPrefecture.area.name,
      prefectureId: userPrefecture.area.prefectureId,
    };
  }

  /**
   * ユーザーの都道府県情報を更新する
   * @param userId ユーザーID
   * @param prefectureIds 都道府県IDの配列
   * @param primaryPrefectureId メインの都道府県ID（指定がない場合は最初の都道府県がメインになる）
   * @returns 更新後の都道府県情報の配列
   */
  async updateUserPrefectures(
    userId: number,
    prefectureIds: number[],
    primaryPrefectureId?: number,
  ): Promise<Area[]> {
    // 既存の都道府県設定を削除
    await this.userPrefectureRepository.delete({ userId });

    if (prefectureIds.length === 0) {
      return [];
    }

    // メインの都道府県が指定されていない場合は、最初の都道府県をメインとする
    const mainPrefectureId = primaryPrefectureId || prefectureIds[0];

    // 新しい都道府県設定を保存
    const userPrefectures = prefectureIds.map((prefectureId) => ({
      userId,
      prefectureId,
      isPrimary: prefectureId === mainPrefectureId,
    }));

    const savedPrefectures =
      await this.userPrefectureRepository.save(userPrefectures);

    // 保存した都道府県情報をprotoのArea形式に変換して返す
    return Promise.all(
      savedPrefectures.map(async (up) => {
        const area = await this.areaRepository.findOne({
          where: { prefectureId: up.prefectureId },
        });
        return {
          name: area?.name || '',
          prefectureId: up.prefectureId,
        };
      }),
    );
  }

  /**
   * ユーザーの都道府県情報を取得し、整形して返す
   * @param userId ユーザーID
   * @returns 整形された都道府県情報
   */
  async getUserPrefecturesFormatted(userId: number): Promise<{
    prefectureIds: number[];
    primaryPrefectureId: number | null;
    prefectures: Area[];
  }> {
    const userPrefectures = await this.userPrefectureRepository.find({
      where: { userId },
      relations: ['area'],
    });

    // 都道府県IDの配列
    const prefectureIds = userPrefectures.map((up) => up.prefectureId);

    // メインの都道府県
    const primaryPrefecture = userPrefectures.find((up) => up.isPrimary);
    const primaryPrefectureId = primaryPrefecture?.prefectureId || null;

    // 都道府県情報の整形
    const prefectures = await Promise.all(
      userPrefectures.map(async (up) => {
        const area =
          up.area ||
          (await this.areaRepository.findOne({
            where: { prefectureId: up.prefectureId },
          }));
        return {
          name: area?.name || '',
          prefectureId: up.prefectureId,
        };
      }),
    );

    return {
      prefectureIds,
      primaryPrefectureId,
      prefectures,
    };
  }

  /**
   * 単一の都道府県を設定する（後方互換性のため）
   * @param userId ユーザーID
   * @param prefectureId 都道府県ID
   * @returns 更新後の都道府県情報
   */
  async setUserPrefecture(
    userId: number,
    prefectureId: number,
  ): Promise<Area[]> {
    return this.updateUserPrefectures(userId, [prefectureId]);
  }
}
