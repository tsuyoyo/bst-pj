import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { AuthState } from "./types";
import { User } from "@/proto/bst/v1/user";

// ローカルストレージからの初期状態の読み込み
const loadAuthState = () => {
  if (typeof window === "undefined") {
    return {
      user: null,
      accessToken: null,
      refreshToken: null,
    };
  }

  try {
    const authState = localStorage.getItem("authState");
    if (authState) {
      return JSON.parse(authState);
    }
  } catch (e) {
    console.error("Failed to load auth state from localStorage", e);
  }

  return {
    user: null,
    accessToken: null,
    refreshToken: null,
  };
};

const initialState = loadAuthState();

export const authSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {
    setCredentials: (
      state,
      action: PayloadAction<{
        user: any;
        accessToken: string;
        refreshToken: string;
      }>
    ) => {
      state.user = action.payload.user;
      state.accessToken = action.payload.accessToken;
      state.refreshToken = action.payload.refreshToken;

      // ローカルストレージに保存
      if (typeof window !== "undefined") {
        localStorage.setItem(
          "authState",
          JSON.stringify({
            user: action.payload.user,
            accessToken: action.payload.accessToken,
            refreshToken: action.payload.refreshToken,
          })
        );
      }
    },
    logout: (state) => {
      state.user = null;
      state.accessToken = null;
      state.refreshToken = null;

      // ローカルストレージから削除
      if (typeof window !== "undefined") {
        localStorage.removeItem("authState");
      }
    },
    startLoading: (state) => {
      state.isLoading = true;
    },
  },
});

export const { setCredentials, logout, startLoading } = authSlice.actions;
export default authSlice.reducer;
