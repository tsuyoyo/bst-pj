import {
  Injectable,
  UnauthorizedException,
  BadRequestException,
} from '@nestjs/common';
import { JwtService, TokenExpiredError } from '@nestjs/jwt';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from '../entities/user.entity';
import { User as ProtoUser } from '../proto/bst/v1/user';
import * as bcrypt from 'bcrypt';
import { UserProfile } from '../entities/user-profile.entity';
import { UserService } from '../user/user.service';

interface JwtPayload {
  sub: number;
  email: string;
  iat?: number;
  exp?: number;
}

@Injectable()
export class AuthService {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(UserProfile)
    private readonly userProfileRepository: Repository<UserProfile>,
    private readonly jwtService: JwtService,
    private readonly userService: UserService,
  ) {}

  private generateTokens(payload: { sub: number; email: string }) {
    const access_token = this.jwtService.sign(payload, {
      secret: process.env.JWT_SECRET,
      expiresIn: '15m', // アクセストークンの有効期限
    });

    const refresh_token = this.jwtService.sign(payload, {
      secret: process.env.JWT_REFRESH_SECRET,
      expiresIn: '7d', // リフレッシュトークンの有効期限
    });

    return { access_token, refresh_token };
  }

  async register(
    email: string,
    password: string,
    name: string,
  ): Promise<{ user: ProtoUser; access_token: string; refresh_token: string }> {
    const existingUser = await this.userRepository.findOne({
      where: { email },
    });
    if (existingUser) {
      throw new UnauthorizedException('Email already exists');
    }

    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await this.userService.create({
      name,
      email,
      password: hashedPassword,
    });
    const userProfile = this.userProfileRepository.create({
      userId: user.id,
    });

    await this.userProfileRepository.save(userProfile);

    const payload = { sub: user.id, email };
    const tokens = this.generateTokens(payload);

    return { user, ...tokens };
  }

  async login(
    email: string,
    password: string,
  ): Promise<{ user: ProtoUser; access_token: string; refresh_token: string }> {
    const user = await this.userRepository.findOne({ where: { email } });
    if (!user) {
      throw new UnauthorizedException('Invalid credentials');
    }
    const protoUser = await this.userService.getUser(user.id);

    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid) {
      throw new UnauthorizedException('Invalid credentials');
    }

    const payload = { sub: user.id, email: user.email };
    const { access_token, refresh_token } = this.generateTokens(payload);
    return {
      user: protoUser,
      access_token,
      refresh_token,
    };
  }

  async refresh(token: string): Promise<{
    user: ProtoUser;
    access_token: string;
    refresh_token: string;
  }> {
    try {
      const payload = this.jwtService.verify<JwtPayload>(token, {
        secret: process.env.JWT_REFRESH_SECRET,
      });

      const user = await this.userRepository.findOne({
        where: { id: payload.sub },
      });
      if (!user) {
        throw new UnauthorizedException('User not found');
      }
      const protoUser = await this.userService.getUser(user.id);

      const newPayload = { sub: user.id, email: user.email };
      const { access_token, refresh_token } = this.generateTokens(newPayload);
      return {
        user: protoUser,
        access_token,
        refresh_token,
      };
    } catch (error) {
      if (error instanceof TokenExpiredError) {
        throw new UnauthorizedException('Refresh token expired');
      }
      throw new BadRequestException('Invalid refresh token');
    }
  }
}
