import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { fetchArtists, fetchArtist, createArtist, updateArtist } from "./api";

// アーティスト一覧を取得するフック
export const useArtists = (pageSize?: number, pageToken?: string) => {
  return useQuery({
    queryKey: ["artists", { pageSize, pageToken }],
    queryFn: () => fetchArtists(pageSize, pageToken),
  });
};

// 特定のアーティストを取得するフック
export const useArtist = (id: string | number) => {
  return useQuery({
    queryKey: ["artists", id],
    queryFn: () => fetchArtist(id),
    enabled: !!id,
  });
};

// 新しいアーティストを作成するフック
export const useCreateArtist = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (artistData: {
      name: string;
      description: string;
      website: string;
    }) => createArtist(artistData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["artists"] });
    },
  });
};

// アーティストを更新するフック
export const useUpdateArtist = (id: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (artistData: { name: string; description: string }) =>
      updateArtist(id, artistData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["artists"] });
      queryClient.invalidateQueries({ queryKey: ["artists", id] });
    },
  });
};
