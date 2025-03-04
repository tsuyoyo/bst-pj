import {
  Body,
  Controller,
  Post,
  Headers,
  UnauthorizedException,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import {
  RegisterRequest,
  RegisterResponse,
  LoginRequest,
  LoginResponse,
  RefreshTokenResponse,
  LogoutResponse,
  RefreshTokenRequest,
} from '../proto/bst/v1/auth_service';
import { IsEmail, IsNotEmpty, Length } from 'class-validator';

class RegisterDto implements RegisterRequest {
  @IsEmail()
  email: string;

  @IsNotEmpty()
  @Length(8, 20)
  password: string;

  @IsNotEmpty()
  @Length(1, 30)
  name: string;
}

class LoginDto implements LoginRequest {
  @IsEmail()
  email: string;

  @IsNotEmpty()
  @Length(8, 20)
  password: string;
}

class RefreshDto implements RefreshTokenRequest {
  @IsNotEmpty()
  refreshToken: string;
}

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  async register(@Body() registerDto: RegisterDto): Promise<RegisterResponse> {
    const { email, password, name } = registerDto;
    const { user, access_token, refresh_token } =
      await this.authService.register(email, password, name);
    return {
      user,
      accessToken: access_token,
      refreshToken: refresh_token,
    };
  }

  @Post('login')
  async login(@Body() loginDto: LoginDto): Promise<LoginResponse> {
    const { email, password } = loginDto;
    const result = await this.authService.login(email, password);
    return {
      accessToken: result.access_token,
      refreshToken: result.refresh_token,
      user: result.user,
    };
  }

  @Post('refresh')
  async refresh(@Body() refreshDto: RefreshDto): Promise<RefreshTokenResponse> {
    const token = refreshDto.refreshToken;
    const result = await this.authService.refresh(token);

    return {
      accessToken: result.access_token,
      refreshToken: result.refresh_token,
      user: result.user,
    };
  }

  @Post('logout')
  async logout(
    @Headers('Authorization') auth: string,
  ): Promise<LogoutResponse> {
    if (!auth) {
      throw new UnauthorizedException('No token provided');
    }

    const token = auth.replace('Bearer ', '');
    await this.authService.logout(token);

    return { success: true };
  }
}
