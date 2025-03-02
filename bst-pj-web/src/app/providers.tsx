"use client";

import React, { useEffect } from "react";
import { Provider } from "react-redux";
import { QueryClientProvider } from "@tanstack/react-query";
import { store } from "../store/store";
import { queryClient } from "@/lib/react-query";
import { useRefreshToken } from "@/features/auth/hooks";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import CssBaseline from "@mui/material/CssBaseline";
import { Noto_Sans_JP } from "next/font/google";

// デフォルトのテーマを作成
const theme = createTheme({
  components: {
    MuiAppBar: {
      styleOverrides: {
        root: {
          backgroundColor: "orange",
        },
      },
    },
    MuiCssBaseline: {
      styleOverrides: {
        body: {
          scrollbarColor: "dark",
          "&::-webkit-scrollbar, & *::-webkit-scrollbar": {
            backgroundColor: "#2b2b2b",
          },
        },
        ".page-container": {
          marginTop: "0.5rem",
          marginLeft: "2rem",
          marginRight: "2rem",
        },
      },
    },
  },
  typography: {
    fontFamily: ["Roboto", "Arial", "Noto Sans JP", "sans-serif"].join(","),
  },
});

function AuthProvider({ children }: { children: React.ReactNode }) {
  const { refetch } = useRefreshToken();

  useEffect(() => {
    refetch(); // アプリ起動時にトークンをリフレッシュ
  }, [refetch]);

  return <>{children}</>;
}

export function Providers({ children }: { children: React.ReactNode }) {
  return (
    <Provider store={store}>
      <ThemeProvider theme={theme}>
        <CssBaseline />
        <QueryClientProvider client={queryClient}>
          <AuthProvider>{children}</AuthProvider>
        </QueryClientProvider>
      </ThemeProvider>
    </Provider>
  );
}
