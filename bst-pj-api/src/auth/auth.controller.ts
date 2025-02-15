import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import {
  RegisterRequest,
  RegisterResponse,
  LoginRequest,
  LoginResponse,
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

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  async register(@Body() registerDto: RegisterDto): Promise<RegisterResponse> {
    const { email, password, name } = registerDto;
    const { user, access_token } = await this.authService.register(
      email,
      password,
      name,
    );
    return {
      user,
      accessToken: access_token,
      refreshToken: '',
    };
  }

  @Post('login')
  async login(@Body() loginDto: LoginDto): Promise<LoginResponse> {
    const { email, password } = loginDto;
    const result = await this.authService.login(email, password);
    return {
      accessToken: result.access_token,
      refreshToken: '',
      user: undefined,
    };
  }
}
