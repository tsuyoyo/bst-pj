import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { MicroserviceOptions, Transport } from '@nestjs/microservices';
import { join } from 'path';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // gRPCマイクロサービスの設定
  app.connectMicroservice<MicroserviceOptions>({
    transport: Transport.GRPC,
    options: {
      package: 'bst.v1',
      protoPath: join(
        __dirname,
        '../../../bst-pj-proto/proto/bst/v1/service.proto',
      ),
      url: `0.0.0.0:${process.env.GRPC_PORT || 50051}`,
    },
  });

  // バリデーションパイプの設定
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  // マイクロサービスの起動
  await app.startAllMicroservices();

  const port = process.env.PORT || 3000;
  await app.listen(port);
  console.log(`Application is running on: http://localhost:${port}`);
  console.log(
    `gRPC server is running on: 0.0.0.0:${process.env.GRPC_PORT || 50051}`,
  );
}
bootstrap();
