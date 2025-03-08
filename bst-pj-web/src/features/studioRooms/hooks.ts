import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import {
  fetchStudioRooms,
  createStudioRoom,
  updateStudioRoom,
  deleteStudioRoom,
  fetchStudioRoomInfos,
  createStudioRoomInfo,
  updateStudioRoomInfo,
  deleteStudioRoomInfo,
} from "./api";
import {
  CreateStudioRoomRequest,
  UpdateStudioRoomRequest,
  CreateStudioRoomInfoRequest,
  UpdateStudioRoomInfoRequest,
} from "@/proto/bst/v1/studio_room_service";

// スタジオのルーム一覧を取得するフック
export const useStudioRooms = (studioId: number) => {
  return useQuery({
    queryKey: ["studioRooms", studioId],
    queryFn: () => fetchStudioRooms(studioId),
    enabled: !!studioId,
  });
};

// スタジオルームを作成するフック
export const useCreateStudioRoom = (studioId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (request: CreateStudioRoomRequest) =>
      createStudioRoom(studioId, request),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
    },
  });
};

// スタジオルームを更新するフック
export const useUpdateStudioRoom = (studioId: number, roomId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (request: UpdateStudioRoomRequest) =>
      updateStudioRoom(studioId, roomId, request),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
    },
  });
};

// スタジオルームを削除するフック
export const useDeleteStudioRoom = (studioId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (roomId: number) => deleteStudioRoom(studioId, roomId),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
    },
  });
};

// スタジオルーム情報一覧を取得するフック
export const useStudioRoomInfos = (studioId: number, roomId: number) => {
  return useQuery({
    queryKey: ["studioRoomInfos", studioId, roomId],
    queryFn: () => fetchStudioRoomInfos(studioId, roomId),
    enabled: !!studioId && !!roomId,
  });
};

// 新しいスタジオルーム情報を作成するフック
export const useCreateStudioRoomInfo = (studioId: number, roomId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (request: CreateStudioRoomInfoRequest) =>
      createStudioRoomInfo(studioId, roomId, request),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};

// スタジオルーム情報を更新するフック
export const useUpdateStudioRoomInfo = (studioId: number, roomId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: ({
      infoId,
      request,
    }: {
      infoId: number;
      request: UpdateStudioRoomInfoRequest;
    }) => updateStudioRoomInfo(studioId, roomId, infoId, request),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};

// スタジオルーム情報を削除するフック
export const useDeleteStudioRoomInfo = (studioId: number, roomId: number) => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (infoId: number) =>
      deleteStudioRoomInfo(studioId, roomId, infoId),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};
