import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { fetchSongs, fetchSong, createSong, updateSong } from "./api";

// 曲一覧を取得するフック
export const useSongs = (
  pageSize?: number,
  pageToken?: string,
  artistId?: number
) => {
  return useQuery({
    queryKey: ["songs", { pageSize, pageToken, artistId }],
    queryFn: () => fetchSongs(pageSize, pageToken, artistId),
  });
};

// 特定の曲を取得するフック
export const useSong = (id: string | number) => {
  return useQuery({
    queryKey: ["songs", id],
    queryFn: () => fetchSong(id),
    enabled: !!id,
  });
};

// 新しい曲を作成するフック
export const useCreateSong = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (songData: { title: string; artistId: number }) =>
      createSong(songData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["songs"] });
    },
  });
};

// 曲を更新するフック
export const useUpdateSong = (id: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (songData: { title: string; artistId: number }) =>
      updateSong(id, songData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["songs"] });
      queryClient.invalidateQueries({ queryKey: ["songs", id] });
    },
  });
};
