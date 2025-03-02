import {
  Injectable,
  CanActivate,
  ExecutionContext,
  UnauthorizedException,
} from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from '../entities/user.entity';
import { TokenExpiredError } from 'jsonwebtoken';

@Injectable()
export class JwtAuthGuard implements CanActivate {
  constructor(
    private jwtService: JwtService,
    @InjectRepository(User)
    private userRepository: Repository<User>,
  ) {}

  async canActivate(context: ExecutionContext): Promise<boolean> {
    const request = context.switchToHttp().getRequest<Request>();
    const response = context.switchToHttp().getResponse();
    const authHeader = request.headers['authorization'] as string | undefined;

    console.log('authHeader', authHeader);
    if (!authHeader) {
      throw new UnauthorizedException('No authorization token provided');
    }

    const [type, token] = authHeader.split(' ');

    console.log('type', type);
    if (type !== 'Bearer') {
      throw new UnauthorizedException('Invalid authorization type');
    }

    let payload: { sub: number; email: string };
    try {
      payload = await this.jwtService.verifyAsync<{
        sub: number;
        email: string;
      }>(token, {
        secret: process.env.JWT_SECRET,
      });
    } catch (error) {
      console.log('Token verification error:', error);

      // トークンの有効期限切れの場合は専用のエラーを返す
      if (error instanceof TokenExpiredError) {
        console.log('token expired ------- ');
        const expiredError = new UnauthorizedException('TOKEN_EXPIRED');
        expiredError.message = 'TOKEN_EXPIRED';
        throw expiredError;
      }

      throw new UnauthorizedException('Invalid token');
    }

    const user = await this.userRepository.findOne({
      where: { id: payload.sub },
    });

    if (!user) {
      console.log('user not found');
      throw new UnauthorizedException('User not found');
    }

    console.log('zzzzzzzzzz');

    // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
    (request as any).user = user;

    return true;
  }
}
