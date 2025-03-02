import { User } from "@/proto/bst/v1/user";

export interface AuthState {
  accessToken: string | null;
  user: User | null;
  isLoading: boolean;
}

export interface TokenResponse {
  accessToken: string;
  refreshToken: string;
  user: User;
}
