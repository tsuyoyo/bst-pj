import { BadRequestException, Injectable } from '@nestjs/common';
import { GcpStorageService } from './gcp-storage.service';

@Injectable()
export class FileValidationService {
  constructor(private readonly gcpStorageService: GcpStorageService) {}

  /**
   * ファイルのサイズをバリデーションします
   * @param file アップロードされたファイル
   * @param maxSizeKB 最大サイズ（KB単位）
   * @throws BadRequestException ファイルサイズが制限を超えている場合
   */
  validateFileSize(file: Express.Multer.File, maxSizeKB: number): void {
    const maxSizeBytes = maxSizeKB * 1024;
    if (file.size > maxSizeBytes) {
      throw new BadRequestException(
        `ファイルサイズは${maxSizeKB}KB以下にしてください。現在のサイズ: ${Math.round(file.size / 1024)}KB`,
      );
    }
  }

  /**
   * ファイルのMIMEタイプをバリデーションします
   * @param file アップロードされたファイル
   * @param allowedMimeTypes 許可されるMIMEタイプの配列
   * @throws BadRequestException MIMEタイプが許可されていない場合
   */
  validateMimeType(
    file: Express.Multer.File,
    allowedMimeTypes: string[],
  ): void {
    if (!allowedMimeTypes.includes(file.mimetype)) {
      throw new BadRequestException(
        `サポートされていないファイル形式です。サポートされている形式: ${allowedMimeTypes.join(', ')}`,
      );
    }
  }

  /**
   * ファイルの存在をバリデーションします
   * @param file アップロードされたファイル
   * @throws BadRequestException ファイルが存在しない場合
   */
  validateFileExists(
    file: Express.Multer.File | undefined,
  ): asserts file is Express.Multer.File {
    if (!file) {
      throw new BadRequestException('ファイルが見つかりません');
    }
  }

  /**
   * 画像ファイルをバリデーションします（サイズと形式）
   * @param file アップロードされたファイル
   * @param maxSizeKB 最大サイズ（KB単位）
   * @throws BadRequestException バリデーションエラーの場合
   */
  validateImageFile(
    file: Express.Multer.File | undefined,
    maxSizeKB = 5 * 1024,
  ): void {
    // ファイルの存在チェック
    this.validateFileExists(file);

    // ファイルサイズのバリデーション
    this.validateFileSize(file, maxSizeKB);

    // 画像ファイルのMIMEタイプバリデーション
    const allowedImageTypes = [
      'image/jpeg',
      'image/png',
      'image/gif',
      'image/webp',
    ];
    this.validateMimeType(file, allowedImageTypes);
  }

  /**
   * 画像ファイルを圧縮し、圧縮後のサイズをバリデーションします
   * @param file アップロードされたファイル
   * @param maxSizeKB 圧縮後の最大サイズ（KB単位）
   * @returns 圧縮後のサイズ（バイト）
   * @throws BadRequestException バリデーションエラーの場合
   */
  async validateAndCompressImage(
    file: Express.Multer.File | undefined,
    maxSizeKB = 256,
  ): Promise<number> {
    // ファイルの存在チェック
    this.validateFileExists(file);

    // 画像ファイルのMIMEタイプバリデーション
    const allowedImageTypes = [
      'image/jpeg',
      'image/png',
      'image/gif',
      'image/webp',
    ];
    this.validateMimeType(file, allowedImageTypes);

    // 画像を圧縮
    const { size: compressedSize } = await this.gcpStorageService.compressImage(
      file.buffer,
      file.mimetype,
    );

    // 圧縮後のサイズをバリデーション
    const maxSizeBytes = maxSizeKB * 1024;
    if (compressedSize > maxSizeBytes) {
      // より強い圧縮を試みる
      const { size: recompressedSize } =
        await this.gcpStorageService.compressImage(
          file.buffer,
          file.mimetype,
          600, // 幅をさらに小さく
          60, // 品質を下げる
        );

      // 再圧縮後もサイズが大きい場合はエラー
      if (recompressedSize > maxSizeBytes) {
        throw new BadRequestException(
          `圧縮後のファイルサイズが大きすぎます。${maxSizeKB}KB以下の画像を使用してください。現在のサイズ: ${Math.round(recompressedSize / 1024)}KB`,
        );
      }

      return recompressedSize;
    }

    return compressedSize;
  }
}
