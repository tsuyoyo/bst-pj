import axios from "axios";
import { store } from "@/store/store";

export const apiClient = axios.create({
  baseURL: process.env.NEXT_PUBLIC_API_BASE_URL,
  headers: {
    "Content-Type": "application/json",
  },
});

// リクエストインターセプターの設定
apiClient.interceptors.request.use(
  (config) => {
    // Redux ストアから現在の認証状態を取得
    const { auth } = store.getState();
    const { accessToken } = auth;

    // アクセストークンが存在する場合、Authorization ヘッダーに追加
    if (accessToken) {
      config.headers.Authorization = `Bearer ${accessToken}`;
    }

    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);

// レスポンスインターセプターの設定
apiClient.interceptors.response.use(
  (response) => response,
  async (error) => {
    const originalRequest = error.config;

    // 401エラーかつリトライフラグがない場合（トークン期限切れの可能性）
    if (error.response?.status === 401 && !originalRequest._retry) {
      originalRequest._retry = true;

      try {
        const { auth } = store.getState();

        // refreshTokenプロパティが存在しない場合、user.refreshTokenを確認
        if (auth.refreshToken) {
          // リフレッシュトークンがある場合、トークンリフレッシュを試みる
          // この部分は実際のリフレッシュロジックに合わせて調整が必要

          // リフレッシュ後に再度リクエストを試みる
          return apiClient(originalRequest);
        }
      } catch (refreshError) {
        return Promise.reject(refreshError);
      }
    }

    return Promise.reject(error);
  }
);
