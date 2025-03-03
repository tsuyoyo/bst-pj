import axios, { AxiosError, AxiosResponse } from "axios";
import { store } from "@/store/store";
import { refreshAccessToken } from "@/features/auth/api";
import { updateTokens } from "@/features/auth/authSlice";

/**
 * Centralized Axios client configuration with interceptors for authentication.
 *
 * This module provides a configured Axios instance with request and response
 * interceptors that handle authentication tokens and token refresh automatically.
 *
 * Usage:
 * ```ts
 * // Direct usage in utility functions or services
 * import { apiClient } from '@/lib/axios';
 *
 * const fetchData = async () => {
 *   const response = await apiClient.get('/endpoint');
 *   return response.data;
 * };
 * ```
 *
 * For React components, consider using the useApi hook which provides
 * React-specific state management on top of this client.
 *
 * The interceptors in this client automatically:
 * 1. Add the Authorization header with the current access token
 * 2. Handle token expiration by refreshing tokens and retrying failed requests
 */

// Create API client
export const apiClient = axios.create({
  baseURL: process.env.NEXT_PUBLIC_API_BASE_URL || "http://localhost:8080",
  headers: {
    "Content-Type": "application/json",
  },
});

// Request interceptor
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

// Response interceptor
apiClient.interceptors.response.use(
  (response: AxiosResponse) => {
    return response;
  },
  async (error: AxiosError) => {
    console.error("Response interceptor 1 - ", error);
    const originalRequest = error.config;

    interface ErrorResponse {
      message: string;
    }

    // Get message from error response
    const errorResponse = error.response?.data as ErrorResponse;
    const errorMessage = errorResponse?.message;

    console.error("Response interceptor 2 - ", errorMessage);

    // When token is expired
    if (
      errorMessage === "TOKEN_EXPIRED" &&
      originalRequest &&
      !(originalRequest as any)._retry
    ) {
      try {
        // Set retry flag
        (originalRequest as any)._retry = true;

        // Get current refresh token from store
        const { auth } = store.getState();

        if (!auth.refreshToken) {
          // Handle as authentication error if no refresh token
          return Promise.reject(error);
        }

        // Refresh token
        const response = await refreshAccessToken();

        // Update store with new tokens
        store.dispatch(
          updateTokens({
            accessToken: response.accessToken,
            refreshToken: response.refreshToken,
          })
        );

        // Retry request with new access token
        originalRequest.headers.Authorization = `Bearer ${response.accessToken}`;

        return apiClient(originalRequest);
      } catch (refreshError) {
        // Return original error if refresh fails
        console.error("Failed to refresh token", refreshError);
        return Promise.reject(error);
      }
    }

    // Return other errors as is
    return Promise.reject(error);
  }
);
