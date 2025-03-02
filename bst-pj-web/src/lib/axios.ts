import axios, { AxiosError, AxiosResponse } from "axios";
import { store } from "@/store/store";
import { refreshAccessToken } from "@/features/auth/api";

// APIクライアントの作成
export const apiClient = axios.create({
  baseURL: process.env.NEXT_PUBLIC_API_BASE_URL || "http://localhost:8080",
  headers: {
    "Content-Type": "application/json",
  },
});

// リクエストインターセプター
apiClient.interceptors.request.use(
  (config) => {
    const { auth } = store.getState();
    if (auth.accessToken) {
      config.headers.Authorization = `Bearer ${auth.accessToken}`;
    }
    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);

// レスポンスインターセプター
apiClient.interceptors.response.use(
  (response: AxiosResponse) => {
    return response;
  },
  async (error: AxiosError) => {
    console.error("Response interceptor 1 - ", error);
    const originalRequest = error.config;

    interface ErrorResponse {
      message?: string;
    }

    // エラーレスポンスからメッセージを取得
    const errorResponse = error.response?.data as ErrorResponse;
    const errorMessage = errorResponse?.message;

    console.error("Response interceptor 2 - ", errorMessage);

    // トークン期限切れの場合
    if (
      errorMessage === "TOKEN_EXPIRED" &&
      originalRequest &&
      !(originalRequest as any)._retry
    ) {
      try {
        // リトライフラグを設定
        (originalRequest as any)._retry = true;

        // ストアから現在のリフレッシュトークンを取得
        const { auth } = store.getState();

        if (!auth.refreshToken) {
          // リフレッシュトークンがない場合は認証エラーとして処理
          return Promise.reject(error);
        }

        // トークンをリフレッシュ
        const response = await refreshAccessToken();

        // 新しいアクセストークンでリクエストを再試行
        originalRequest.headers.Authorization = `Bearer ${response.accessToken}`;

        return apiClient(originalRequest);
      } catch (refreshError) {
        // リフレッシュに失敗した場合は元のエラーを返す
        console.error("トークンのリフレッシュに失敗しました", refreshError);
        return Promise.reject(error);
      }
    }

    // その他のエラーはそのまま返す
    return Promise.reject(error);
  }
);
