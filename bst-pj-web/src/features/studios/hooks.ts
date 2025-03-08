import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import {
  fetchStudios,
  fetchStudio,
  createStudio,
  updateStudio,
  deleteStudio,
} from "./api";
import { Location } from "@/proto/bst/v1/location";

// スタジオ一覧を取得するフック
export const useStudios = (pageSize?: number, pageToken?: string) => {
  return useQuery({
    queryKey: ["studios", { pageSize, pageToken }],
    queryFn: () => fetchStudios(pageSize, pageToken),
  });
};

// 特定のスタジオを取得するフック
export const useStudio = (id: string | number) => {
  return useQuery({
    queryKey: ["studios", id],
    queryFn: () => fetchStudio(id),
    enabled: !!id,
  });
};

// 新しいスタジオを作成するフック
export const useCreateStudio = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (studioData: {
      name: string;
      description: string;
      location: Location;
    }) => createStudio(studioData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studios"] });
    },
  });
};

// スタジオを更新するフック
export const useUpdateStudio = (id: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (studioData: {
      name?: string;
      description?: string;
      location?: Location;
    }) => updateStudio(id, studioData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studios"] });
      queryClient.invalidateQueries({ queryKey: ["studios", id] });
    },
  });
};

// スタジオを削除するフック
export const useDeleteStudio = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string | number) => deleteStudio(id),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studios"] });
    },
  });
};
