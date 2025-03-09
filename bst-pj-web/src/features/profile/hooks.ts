import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { getMyProfile, updateProfileField } from "./api";
import { ProfileUpdateField } from "./types";

/**
 * Custom hook to fetch current user's profile
 */
export const useMyProfile = () => {
  return useQuery({
    queryKey: ["profile", "me"],
    queryFn: getMyProfile,
    retry: false,
    refetchOnWindowFocus: false,
  });
};

/**
 * Custom hook to update profile fields
 */
export const useUpdateProfile = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ field, value }: ProfileUpdateField) => {
      return updateProfileField(field, value);
    },
    onSuccess: (data) => {
      // 成功時にプロフィールデータを更新
      queryClient.setQueryData(["profile", "me"], (oldData: any) => {
        if (oldData) {
          return {
            ...oldData,
            profile: data.profile,
          };
        }
        return oldData;
      });
    },
  });
};
