import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';
import * as bodyParser from 'body-parser';
import { Request, Response, NextFunction } from 'express';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // CORS設定を追加
  app.enableCors({
    origin: process.env.FRONTEND_URL || 'http://localhost:3000', // フロントエンドのURL
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS',
    credentials: true, // Cookie等の認証情報を許可
    allowedHeaders: 'Content-Type, Accept, Authorization',
  });

  // リクエストサイズをログに記録するミドルウェア
  app.use((req: Request, res: Response, next: NextFunction) => {
    const contentLength = req.headers['content-length'];
    if (contentLength && req.method !== 'GET') {
      const sizeInBytes = parseInt(contentLength, 10);
      const sizeInKB = Math.round(sizeInBytes / 1024);
      const sizeInMB = (sizeInBytes / (1024 * 1024)).toFixed(2);
      console.log(
        `[${req.method}] ${req.url} - リクエストサイズ: ${sizeInBytes} bytes (${sizeInKB} KB, ${sizeInMB} MB)`,
      );

      // 大きなリクエストの場合は警告を出す
      if (sizeInBytes > 1 * 1024 * 1024) {
        // 1MB以上
        console.warn(`⚠️ 大きなリクエスト検出: ${req.url} - ${sizeInMB} MB`);
      }
    }
    next();
  });

  // リクエストサイズ制限の設定
  app.use(bodyParser.json({ limit: '10mb' }));
  app.use(bodyParser.urlencoded({ limit: '10mb', extended: true }));

  // バリデーションパイプの設定
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  const port = process.env.PORT || 3001;
  await app.listen(port);
  console.log(`Application is running on: http://localhost:${port}`);
}
bootstrap().catch((error) => {
  console.error(error);
});
