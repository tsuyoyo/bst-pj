import { apiClient } from "@/lib/axios";
import {
  RegisterRequest,
  RegisterResponse,
  LoginRequest,
  LoginResponse,
  RefreshTokenResponse,
} from "@/proto/bst/v1/auth_service";
import { TokenResponse } from "./types";

export const register = async (
  request: RegisterRequest
): Promise<TokenResponse> => {
  const { data } = await apiClient.post<RegisterResponse>(
    "/auth/register",
    request
  );
  // リフレッシュトークンを自動的にhttpOnlyクッキーとして設定
  return {
    accessToken: data.accessToken,
    refreshToken: data.refreshToken,
    user: data.user!,
  };
};

export const refreshAccessToken = async (): Promise<TokenResponse> => {
  const { data } = await apiClient.post<RefreshTokenResponse>("/auth/refresh");
  return {
    accessToken: data.accessToken,
    refreshToken: data.refreshToken,
    user: data.user,
  };
};

export const logout = async (): Promise<void> => {
  await apiClient.post("/auth/logout");
};

export const login = async (request: LoginRequest): Promise<TokenResponse> => {
  const { data } = await apiClient.post<LoginResponse>("/auth/login", request);
  return {
    accessToken: data.accessToken,
    refreshToken: data.refreshToken,
    user: data.user!,
  };
};
