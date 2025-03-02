import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // CORS設定を追加
  app.enableCors({
    origin: process.env.FRONTEND_URL || 'http://localhost:3000', // フロントエンドのURL
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS',
    credentials: true, // Cookie等の認証情報を許可
    allowedHeaders: 'Content-Type, Accept, Authorization',
  });

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
