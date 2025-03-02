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
    // Add custom styles for TextField
    MuiTextField: {
      styleOverrides: {
        root: {
          "& .MuiOutlinedInput-root": {
            "& fieldset": {
              borderColor: "orange", // Change border color
            },
            "&:hover fieldset": {
              borderColor: "lightorange", // Change border color on hover
            },
            "&.Mui-focused fieldset": {
              borderColor: "orange", // Change border color when focused
            },
          },
        },
      },
    },
    // Add custom styles for Button
    MuiButton: {
      styleOverrides: {
        root: {
          backgroundColor: "darkorange", // Change default background color
          color: "white", // Change text color
          "&:hover": {
            backgroundColor: "orange", // Change background color on hover
          },
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
