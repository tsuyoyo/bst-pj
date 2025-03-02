import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { AuthState } from "./types";
import { User } from "@/proto/bst/v1/user";

const initialState: AuthState = {
  accessToken: null,
  refreshToken: null,
  user: null,
  isLoading: true,
};

export const authSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {
    setCredentials: (
      state,
      action: PayloadAction<{
        accessToken: string;
        refreshToken: string;
        user: User;
      }>
    ) => {
      console.log("setCredentials", action.payload);
      state.accessToken = action.payload.accessToken;
      state.refreshToken = action.payload.refreshToken;
      state.user = action.payload.user;
      state.isLoading = false;
    },
    logout: (state) => {
      state.accessToken = null;
      state.refreshToken = null;
      state.user = null;
      state.isLoading = false;
    },
    startLoading: (state) => {
      state.isLoading = true;
    },
  },
});

export const { setCredentials, logout, startLoading } = authSlice.actions;
export default authSlice.reducer;
