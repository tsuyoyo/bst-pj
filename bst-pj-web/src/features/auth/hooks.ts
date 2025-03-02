"use client";

import { useMutation, useQuery } from "@tanstack/react-query";
import { register, refreshAccessToken, logout, login } from "./api";
import { useRouter } from "next/navigation";
import { useDispatch, useSelector } from "react-redux";
import {
  setCredentials,
  logout as logoutAction,
  updateTokens,
} from "./authSlice";
import { useEffect, useCallback, useRef } from "react";
import { store } from "../../store/store";
import { RootState } from "@/store/store";

export const useRegister = () => {
  const router = useRouter();
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: register,
    onSuccess: (data) => {
      dispatch(
        setCredentials({
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          user: data.user,
        })
      );
      router.push("/");
    },
  });
};

export const useRefreshToken = () => {
  const dispatch = useDispatch();
  const { refreshToken } = useSelector((state: RootState) => state.auth);
  // リフレッシュ処理が進行中かどうかを追跡するためのref
  const isRefreshing = useRef(false);

  const refetch = useCallback(async () => {
    // すでにリフレッシュ中なら実行しない
    if (isRefreshing.current) {
      console.log(
        "Token refresh already in progress, skipping duplicate request"
      );
      return;
    }

    if (!refreshToken) {
      console.error("No refresh token available");
      return;
    }

    try {
      isRefreshing.current = true;
      const response = await refreshAccessToken();
      dispatch(
        updateTokens({
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
        })
      );
      return response;
    } catch (error) {
      console.error("Failed to refresh token:", error);
      throw error;
    } finally {
      isRefreshing.current = false;
    }
  }, [dispatch, refreshToken]);

  return { refetch };
};

export const useLogout = (closeDrawer: () => void) => {
  const router = useRouter();
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: logout,
    onSuccess: () => {
      dispatch(logoutAction());
      closeDrawer();
      router.push("/");
    },
  });
};

export const useLogin = () => {
  const router = useRouter();
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: async ({
      email,
      password,
    }: {
      email: string;
      password: string;
    }) => {
      return login({ email, password });
    },
    onSuccess: (data) => {
      dispatch(
        setCredentials({
          user: data.user,
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
        })
      );
      router.push("/");
    },
  });
};
