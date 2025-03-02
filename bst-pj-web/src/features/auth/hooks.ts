import { useMutation, useQuery } from "@tanstack/react-query";
import { register, refreshAccessToken, logout, login } from "./api";
import { useRouter } from "next/navigation";
import { useDispatch } from "react-redux";
import { setCredentials, logout as logoutAction } from "./authSlice";
import { useEffect } from "react";
import { store } from "../../store/store";

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
  const { auth } = store.getState();

  const query = useQuery({
    queryKey: ["auth", "refresh"],
    queryFn: refreshAccessToken,
    retry: 1,
    enabled: false,
  });

  useEffect(() => {
    if (query.data) {
      dispatch(
        setCredentials({
          accessToken: query.data.accessToken,
          refreshToken: query.data.refreshToken,
          user: query.data.user,
        })
      );
    }
  }, [query.data, dispatch]);

  const conditionalRefetch = () => {
    if (auth.refreshToken) {
      return query.refetch();
    }
    return Promise.resolve(null);
  };

  return {
    ...query,
    refetch: conditionalRefetch,
  };
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
