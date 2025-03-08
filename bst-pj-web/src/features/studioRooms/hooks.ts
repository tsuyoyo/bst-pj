import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import {
  fetchStudioRooms,
  fetchStudioRoom,
  createStudioRoom,
  updateStudioRoom,
  deleteStudioRoom,
  fetchStudioRoomInfos,
  createStudioRoomInfo,
  updateStudioRoomInfo,
  deleteStudioRoomInfo,
} from "./api";

// スタジオのルーム一覧を取得するフック
export const useStudioRooms = (studioId: string | number) => {
  return useQuery({
    queryKey: ["studioRooms", studioId],
    queryFn: () => fetchStudioRooms(studioId),
    enabled: !!studioId,
  });
};

// 特定のスタジオルームを取得するフック
export const useStudioRoom = (
  studioId: string | number,
  roomId: string | number
) => {
  return useQuery({
    queryKey: ["studioRooms", studioId, roomId],
    queryFn: () => fetchStudioRoom(studioId, roomId),
    enabled: !!studioId && !!roomId,
  });
};

// 新しいスタジオルームを作成するフック
export const useCreateStudioRoom = (studioId: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (roomData: { name: string; capacity: number; price: number }) =>
      createStudioRoom(studioId, roomData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
    },
  });
};

// スタジオルームを更新するフック
export const useUpdateStudioRoom = (
  studioId: string | number,
  roomId: string | number
) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (roomData: {
      name: string;
      capacity: number;
      size: number;
      price: number;
    }) => updateStudioRoom(studioId, roomId, roomData),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
      queryClient.invalidateQueries({
        queryKey: ["studioRooms", studioId, roomId],
      });
    },
  });
};

// スタジオルームを削除するフック
export const useDeleteStudioRoom = (studioId: string | number) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (roomId: string | number) => deleteStudioRoom(studioId, roomId),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["studioRooms", studioId] });
    },
  });
};

// スタジオルーム情報一覧を取得するフック
export const useStudioRoomInfos = (
  studioId: string | number,
  roomId: string | number
) => {
  return useQuery({
    queryKey: ["studioRoomInfos", studioId, roomId],
    queryFn: () => fetchStudioRoomInfos(studioId, roomId),
    enabled: !!studioId && !!roomId,
  });
};

// 新しいスタジオルーム情報を作成するフック
export const useCreateStudioRoomInfo = (
  studioId: string | number,
  roomId: string | number
) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (infoData: { type: string; key: string; value: string }) =>
      createStudioRoomInfo(studioId, roomId, infoData),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};

// スタジオルーム情報を更新するフック
export const useUpdateStudioRoomInfo = (
  studioId: string | number,
  roomId: string | number,
  infoId: string | number
) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (infoData: { type: string; key: string; value: string }) =>
      updateStudioRoomInfo(studioId, roomId, infoId, infoData),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};

// スタジオルーム情報を削除するフック
export const useDeleteStudioRoomInfo = (
  studioId: string | number,
  roomId: string | number
) => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (infoId: string | number) =>
      deleteStudioRoomInfo(studioId, roomId, infoId),
    onSuccess: () => {
      queryClient.invalidateQueries({
        queryKey: ["studioRoomInfos", studioId, roomId],
      });
    },
  });
};
