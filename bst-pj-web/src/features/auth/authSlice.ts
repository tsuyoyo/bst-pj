import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { AuthState } from "./types";
import { User } from "@/proto/bst/v1/user";

// ローカルストレージからトークンを取得
const getInitialState = (): AuthState => {
  if (typeof window === "undefined") {
    return {
      user: null,
      accessToken: null,
      refreshToken: null,
      isLoading: false,
    };
  }

  try {
    // authStateから読み込み
    const authStateStr = localStorage.getItem("authState");
    if (authStateStr) {
      const authState = JSON.parse(authStateStr);
      return {
        user: authState.user || null,
        accessToken: authState.accessToken || null,
        refreshToken: authState.refreshToken || null,
        isLoading: false,
      };
    }

    // 個別のキーから読み込み（後方互換性のため）
    return {
      user: JSON.parse(localStorage.getItem("user") || "null"),
      accessToken: localStorage.getItem("accessToken"),
      refreshToken: localStorage.getItem("refreshToken"),
      isLoading: false,
    };
  } catch (error) {
    console.error("Failed to parse auth state from localStorage:", error);
    return {
      user: null,
      accessToken: null,
      refreshToken: null,
      isLoading: false,
    };
  }
};

const initialState: AuthState = getInitialState();

export const authSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {
    setCredentials: (
      state,
      action: PayloadAction<{
        user: User | null;
        accessToken: string;
        refreshToken: string;
      }>
    ) => {
      state.user = action.payload.user;
      state.accessToken = action.payload.accessToken;
      state.refreshToken = action.payload.refreshToken;

      // ローカルストレージに保存
      if (typeof window !== "undefined") {
        // authStateとして保存
        localStorage.setItem(
          "authState",
          JSON.stringify({
            user: action.payload.user,
            accessToken: action.payload.accessToken,
            refreshToken: action.payload.refreshToken,
          })
        );

        // 個別のキーにも保存（後方互換性のため）
        localStorage.setItem("user", JSON.stringify(action.payload.user));
        localStorage.setItem("accessToken", action.payload.accessToken);
        localStorage.setItem("refreshToken", action.payload.refreshToken);
      }
    },
    updateAccessToken: (state, action: PayloadAction<string>) => {
      state.accessToken = action.payload;

      // ローカルストレージのアクセストークンを更新
      if (typeof window !== "undefined") {
        localStorage.setItem("accessToken", action.payload);

        // authStateも更新
        const authStateStr = localStorage.getItem("authState");
        if (authStateStr) {
          const authState = JSON.parse(authStateStr);
          localStorage.setItem(
            "authState",
            JSON.stringify({
              ...authState,
              accessToken: action.payload,
            })
          );
        }
      }
    },
    updateTokens: (
      state,
      action: PayloadAction<{
        accessToken: string;
        refreshToken: string;
      }>
    ) => {
      state.accessToken = action.payload.accessToken;
      state.refreshToken = action.payload.refreshToken;

      // ローカルストレージのトークンを更新
      if (typeof window !== "undefined") {
        // 個別のキーを更新
        localStorage.setItem("accessToken", action.payload.accessToken);
        localStorage.setItem("refreshToken", action.payload.refreshToken);

        // authStateも更新
        const authStateStr = localStorage.getItem("authState");
        if (authStateStr) {
          const authState = JSON.parse(authStateStr);
          localStorage.setItem(
            "authState",
            JSON.stringify({
              ...authState,
              accessToken: action.payload.accessToken,
              refreshToken: action.payload.refreshToken,
            })
          );
        }
      }
    },
    logout: (state) => {
      state.user = null;
      state.accessToken = null;
      state.refreshToken = null;

      // ローカルストレージから削除
      if (typeof window !== "undefined") {
        localStorage.removeItem("authState");
        localStorage.removeItem("user");
        localStorage.removeItem("accessToken");
        localStorage.removeItem("refreshToken");
      }
    },
    startLoading: (state) => {
      state.isLoading = true;
    },
  },
});

export const {
  setCredentials,
  updateAccessToken,
  updateTokens,
  logout,
  startLoading,
} = authSlice.actions;
export default authSlice.reducer;
