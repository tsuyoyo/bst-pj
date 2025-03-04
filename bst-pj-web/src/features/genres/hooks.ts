import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { fetchGenres, fetchGenre, createGenre, updateGenre } from "./api";
import { Genre } from "@/proto/bst/v1/content";

// ジャンル一覧を取得するフック
export const useGenres = () => {
  return useQuery({
    queryKey: ["genres"],
    queryFn: fetchGenres,
  });
};

// 特定のジャンルを取得するフック
export const useGenre = (id: string | number) => {
  return useQuery({
    queryKey: ["genres", id],
    queryFn: () => fetchGenre(id),
    enabled: !!id,
  });
};

// 新しいジャンルを作成するフック
export const useCreateGenre = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (name: string) => createGenre(name),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["genres"] });
    },
  });
};

// ジャンルを更新するフック
export const useUpdateGenre = (id: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (name: string) => updateGenre(id, name),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["genres"] });
      queryClient.invalidateQueries({ queryKey: ["genres", id] });
    },
  });
};
