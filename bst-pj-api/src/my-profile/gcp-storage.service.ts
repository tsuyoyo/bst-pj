import { Injectable } from '@nestjs/common';
import { Storage } from '@google-cloud/storage';
import { ConfigService } from '@nestjs/config';
import { v4 as uuidv4 } from 'uuid';
import * as sharp from 'sharp';

@Injectable()
export class GcpStorageService {
  private storage: Storage;
  private bucket: string;

  constructor(private configService: ConfigService) {
    this.storage = new Storage({
      projectId: this.configService.get<string>('GCP_PROJECT_ID') || '',
      keyFilename:
        this.configService.get<string>('GCP_KEY_FILE_PATH') || './gcp-key.json',
    });
    this.bucket = this.configService.get<string>('GCP_BUCKET_NAME') || '';
  }

  /**
   * 画像を圧縮します
   * @param buffer 元の画像バッファ
   * @param mimetype MIMEタイプ
   * @param maxWidth 最大幅（ピクセル）
   * @param quality JPEG品質（0-100）
   * @returns 圧縮された画像バッファとサイズ
   */
  async compressImage(
    buffer: Buffer,
    mimetype: string,
    maxWidth = 800,
    quality = 80,
  ): Promise<{ buffer: Buffer; size: number }> {
    try {
      let sharpInstance = sharp(buffer);

      // 画像の情報を取得
      const metadata = await sharpInstance.metadata();

      // 画像のリサイズ（幅が指定値より大きい場合のみ）
      if (metadata.width && metadata.width > maxWidth) {
        sharpInstance = sharpInstance.resize(maxWidth);
      }

      // フォーマットに応じた圧縮
      let compressedBuffer: Buffer;

      if (mimetype === 'image/jpeg' || mimetype === 'image/jpg') {
        compressedBuffer = await sharpInstance.jpeg({ quality }).toBuffer();
      } else if (mimetype === 'image/png') {
        compressedBuffer = await sharpInstance
          .png({ quality: quality / 1.2 })
          .toBuffer();
      } else if (mimetype === 'image/webp') {
        compressedBuffer = await sharpInstance.webp({ quality }).toBuffer();
      } else if (mimetype === 'image/gif') {
        // GIFはそのまま
        compressedBuffer = buffer;
      } else {
        // その他のフォーマットはJPEGに変換
        compressedBuffer = await sharpInstance.jpeg({ quality }).toBuffer();
      }

      return {
        buffer: compressedBuffer,
        size: compressedBuffer.length,
      };
    } catch (error) {
      console.error('画像圧縮エラー:', error);
      // 圧縮に失敗した場合は元の画像を返す
      return {
        buffer,
        size: buffer.length,
      };
    }
  }

  /**
   * ユーザーアイコンのアップロード用の署名付きURLを生成します
   * @param userId ユーザーID
   * @returns アップロード用の署名付きURLと公開URL
   */
  async generateSignedUrlForUserIcon(
    userId: number,
  ): Promise<{ uploadUrl: string; publicUrl: string }> {
    // ユニークなファイル名を生成
    const fileName = `user-icons/${userId}/${uuidv4()}.jpg`;
    const file = this.storage.bucket(this.bucket).file(fileName);

    // 署名付きURLを生成（有効期限付き）
    const [uploadUrl] = await file.getSignedUrl({
      version: 'v4',
      action: 'write',
      expires: Date.now() + 15 * 60 * 1000, // 15分間有効
      contentType: 'image/jpeg',
    });

    // 公開URLを生成
    const publicUrl = `https://storage.googleapis.com/${this.bucket}/${fileName}`;

    return { uploadUrl, publicUrl };
  }

  /**
   * ファイルを直接GCSにアップロードします
   * @param userId ユーザーID
   * @param file アップロードするファイル
   * @returns 公開URL
   */
  async uploadUserIcon(
    userId: number,
    file: Express.Multer.File,
  ): Promise<string> {
    // ユニークなファイル名を生成
    const fileName = `user-icons/${userId}/${uuidv4()}.jpg`;
    const gcsFile = this.storage.bucket(this.bucket).file(fileName);

    // ファイルをGCSにアップロード
    await new Promise<void>((resolve, reject) => {
      const stream = gcsFile.createWriteStream({
        metadata: {
          contentType: file.mimetype,
        },
        resumable: false,
      });

      stream.on('error', (err) => {
        reject(err);
      });

      stream.on('finish', () => {
        resolve();
      });

      stream.end(file.buffer);
    });

    // 公開URLを生成
    const publicUrl = `https://storage.googleapis.com/${this.bucket}/${fileName}`;

    return publicUrl;
  }

  /**
   * ファイルを圧縮してGCSにアップロードします
   * @param userId ユーザーID
   * @param file アップロードするファイル
   * @param maxSizeKB 最大サイズ（KB単位）
   * @returns 圧縮後のファイルサイズ（バイト）と公開URL
   */
  async compressAndUploadUserIcon(
    userId: number,
    file: Express.Multer.File,
    maxSizeKB = 256,
  ): Promise<{ size: number; url: string }> {
    // 画像を圧縮
    const { buffer: compressedBuffer, size: compressedSize } =
      await this.compressImage(file.buffer, file.mimetype);

    // 圧縮後のサイズが制限を超えている場合は、さらに圧縮を試みる
    let finalBuffer = compressedBuffer;
    let finalSize = compressedSize;

    if (compressedSize > maxSizeKB * 1024) {
      // より強い圧縮を試みる（品質を下げる）
      const { buffer: recompressedBuffer, size: recompressedSize } =
        await this.compressImage(
          file.buffer,
          file.mimetype,
          600, // 幅をさらに小さく
          60, // 品質を下げる
        );

      finalBuffer = recompressedBuffer;
      finalSize = recompressedSize;
    }

    // ユニークなファイル名を生成
    const fileName = `user-icons/${userId}/${uuidv4()}.jpg`;
    const gcsFile = this.storage.bucket(this.bucket).file(fileName);

    // 圧縮したファイルをGCSにアップロード
    await new Promise<void>((resolve, reject) => {
      const stream = gcsFile.createWriteStream({
        metadata: {
          contentType: 'image/jpeg', // 常にJPEGとして保存
        },
        resumable: false,
      });

      stream.on('error', (err) => {
        reject(err);
      });

      stream.on('finish', () => {
        resolve();
      });

      stream.end(finalBuffer);
    });

    // 公開URLを生成
    const publicUrl = `https://storage.googleapis.com/${this.bucket}/${fileName}`;

    return {
      size: finalSize,
      url: publicUrl,
    };
  }

  /**
   * GCS上のファイルを削除します
   * @param fileUrl 削除するファイルのURL
   * @returns 削除が成功したかどうか
   */
  async deleteFile(fileUrl: string): Promise<boolean> {
    try {
      // URLからファイルパスを抽出
      const urlPattern = new RegExp(
        `https://storage.googleapis.com/${this.bucket}/(.+)`,
      );
      const match = fileUrl.match(urlPattern);

      if (!match || !match[1]) {
        return false; // URLが正しい形式でない場合
      }

      const filePath = match[1];
      const file = this.storage.bucket(this.bucket).file(filePath);

      // ファイルが存在するか確認
      const [exists] = await file.exists();
      if (!exists) {
        return false; // ファイルが存在しない場合
      }

      // ファイルを削除
      await file.delete();
      return true;
    } catch (error) {
      console.error('ファイル削除エラー:', error);
      return false;
    }
  }
}
