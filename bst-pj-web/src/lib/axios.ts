import axios from "axios";

export const apiClient = axios.create({
  baseURL: process.env.NEXT_PUBLIC_API_BASE_URL,
  headers: {
    "Content-Type": "application/json",
  },
});

// レスポンスインターセプターの設定（必要に応じて）
apiClient.interceptors.response.use(
  (response) => response,
  (error) => {
    // エラーハンドリング
    return Promise.reject(error);
  }
);
