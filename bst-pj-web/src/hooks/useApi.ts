"use client";

import { useState, useCallback, useRef, useEffect } from "react";
import { apiClient } from "@/lib/axios";
import { useRefreshToken } from "@/features/auth/hooks";
import { AxiosRequestConfig, AxiosResponse } from "axios";

interface ApiState<T> {
  data: T | null;
  loading: boolean;
  error: string | null;
}

type HttpMethod = "get" | "post" | "put" | "delete" | "patch";

/**
 * Custom React hook for making API requests with state management.
 *
 * This hook is designed to be used within React components to handle API calls
 * with built-in loading, error, and data state management. It wraps the apiClient
 * from axios.ts and provides a more React-friendly interface.
 *
 * Usage:
 * ```tsx
 * // In a React component
 * const api = useApi<ResponseType>();
 *
 * // Making GET request
 * const fetchData = async () => {
 *   const response = await api.execute('get', '/endpoint');
 *   if (response) {
 *     // Handle successful response
 *   }
 * };
 *
 * // Making POST request with body
 * const createData = async () => {
 *   const response = await api.execute('post', '/endpoint', { name: 'value' });
 *   if (response) {
 *     // Handle successful response
 *   }
 * };
 *
 * // Making GET request with query parameters
 * const searchData = async () => {
 *   const response = await api.execute('get', '/endpoint', { params: { query: 'value' } });
 *   if (response) {
 *     // Handle successful response
 *   }
 * };
 *
 * // Accessing state
 * if (api.loading) return <Loading />;
 * if (api.error) return <Error message={api.error} />;
 * if (api.data) return <Data data={api.data} />;
 * ```
 *
 * This hook also handles token refresh automatically when TOKEN_EXPIRED errors occur.
 */
export function useApi<T>() {
  const [state, setState] = useState<ApiState<T>>({
    data: null,
    loading: false,
    error: null,
  });

  const { refetch } = useRefreshToken();

  // 実行関数を定義
  const executeRequest = useCallback(
    async (
      method: HttpMethod,
      url: string,
      dataOrOptions?: any
    ): Promise<T | null> => {
      setState((prev) => ({ ...prev, loading: true, error: null }));

      try {
        let result: AxiosResponse<T>;

        // Handle different HTTP methods appropriately
        if (method === "get" || method === "delete") {
          // For GET and DELETE, dataOrOptions is treated as config
          const config: AxiosRequestConfig = dataOrOptions || {};
          result = await apiClient[method]<T>(url, config);
        } else {
          // For POST, PUT, PATCH, separate data and config
          const data =
            dataOrOptions && !dataOrOptions.headers && !dataOrOptions.params
              ? dataOrOptions
              : undefined;
          const config: AxiosRequestConfig =
            dataOrOptions && (dataOrOptions.headers || dataOrOptions.params)
              ? dataOrOptions
              : {};

          result = await apiClient[method]<T>(url, data, config);
        }

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
            let result: AxiosResponse<T>;

            // Handle different HTTP methods appropriately (same as above)
            if (method === "get" || method === "delete") {
              const config: AxiosRequestConfig = dataOrOptions || {};
              result = await apiClient[method]<T>(url, config);
            } else {
              const data =
                dataOrOptions && !dataOrOptions.headers && !dataOrOptions.params
                  ? dataOrOptions
                  : undefined;
              const config: AxiosRequestConfig =
                dataOrOptions && (dataOrOptions.headers || dataOrOptions.params)
                  ? dataOrOptions
                  : {};

              result = await apiClient[method]<T>(url, data, config);
            }

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
    [refetch]
  );

  return {
    ...state,
    execute: executeRequest,
    reset: useCallback(
      () => setState({ data: null, loading: false, error: null }),
      []
    ),
  };
}
