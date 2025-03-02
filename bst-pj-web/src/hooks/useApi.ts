"use client";

import { useState, useCallback, useRef } from "react";
import { apiClient } from "@/lib/axios";
import { useRefreshToken } from "@/features/auth/hooks";
import { AxiosRequestConfig } from "axios";

interface ApiState<T> {
  data: T | null;
  loading: boolean;
  error: string | null;
}

export function useApi<T>() {
  const [state, setState] = useState<ApiState<T>>({
    data: null,
    loading: false,
    error: null,
  });

  const { refetch } = useRefreshToken();

  // Use useRef to maintain stable function references
  const stableRef = useRef<{
    execute: (
      method: string,
      url: string,
      options?: AxiosRequestConfig
    ) => Promise<T | null>;
  }>();

  // Define execute method only once
  if (!stableRef.current) {
    stableRef.current = {
      execute: async (
        method: string,
        url: string,
        options?: AxiosRequestConfig
      ): Promise<T | null> => {
        setState((prev) => ({ ...prev, loading: true, error: null }));

        try {
          const axiosMethod =
            apiClient[method.toLowerCase() as keyof typeof apiClient];
          if (typeof axiosMethod !== "function") {
            throw new Error(`Invalid HTTP method: ${method}`);
          }

          const result = await axiosMethod(url, options);
          setState({
            data: result.data,
            loading: false,
            error: null,
          });
          return result.data;
        } catch (err: any) {
          console.error(`API ${method} ${url} request error:`, err);

          // トークン期限切れエラーの場合のみリフレッシュを試みる
          if (err.response?.data?.message === "TOKEN_EXPIRED") {
            try {
              // トークンをリフレッシュ
              await refetch();

              // リフレッシュ成功後、元のリクエストを再試行
              const axiosMethod =
                apiClient[method.toLowerCase() as keyof typeof apiClient];
              const result = await axiosMethod(url, options);

              setState({
                data: result.data,
                loading: false,
                error: null,
              });

              return result.data;
            } catch (refreshErr) {
              console.error("Failed to refresh token", refreshErr);
              setState({
                data: null,
                loading: false,
                error: "Your authentication has expired. Please log in again.",
              });
            }
          } else {
            setState({
              data: null,
              loading: false,
              error: err.response?.data?.message || "Request failed.",
            });
          }
          return null;
        }
      },
    };
  }

  return {
    ...state,
    execute: stableRef.current.execute,
    reset: useCallback(
      () => setState({ data: null, loading: false, error: null }),
      []
    ),
  };
}
