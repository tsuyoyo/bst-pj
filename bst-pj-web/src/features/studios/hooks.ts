import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import {
  fetchStudios,
  fetchStudio,
  createStudio,
  updateStudio,
  deleteStudio,
} from "./api";
import { Area } from "@/proto/bst/v1/area";

// スタジオ一覧を取得するフック
export const useStudios = (
  pageSize?: number,
  pageToken?: string,
  area?: Area
) => {
  return useQuery({
    queryKey: ["studios", { pageSize, pageToken, area }],
    queryFn: () => fetchStudios(pageSize, pageToken, area),
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
      googleMapsUrl: string;
      additionalInfo: string;
      areaId: number;
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
      googleMapsUrl?: string;
      additionalInfo?: string;
      areaId?: number;
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
