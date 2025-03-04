import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { fetchParts, fetchPart, createPart, updatePart } from "./api";

// パーツ一覧を取得するフック
export const useParts = (pageSize?: number, pageToken?: string) => {
  return useQuery({
    queryKey: ["parts", { pageSize, pageToken }],
    queryFn: () => fetchParts(pageSize, pageToken),
  });
};

// 特定のパーツを取得するフック
export const usePart = (id: string | number) => {
  return useQuery({
    queryKey: ["parts", id],
    queryFn: () => fetchPart(id),
    enabled: !!id,
  });
};

// 新しいパーツを作成するフック
export const useCreatePart = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (partData: { name: string; description: string }) =>
      createPart(partData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["parts"] });
    },
  });
};

// パーツを更新するフック
export const useUpdatePart = (id: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (partData: { name: string; description: string }) =>
      updatePart(id, partData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["parts"] });
      queryClient.invalidateQueries({ queryKey: ["parts", id] });
    },
  });
};
