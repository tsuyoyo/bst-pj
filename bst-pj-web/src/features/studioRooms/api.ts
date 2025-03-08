import { apiClient } from "@/lib/axios";
import { StudioRoom, StudioRoomInfo } from "@/proto/bst/v1/location";
import {
  ListStudioRoomsResponse,
  GetStudioRoomResponse,
  CreateStudioRoomResponse,
  UpdateStudioRoomResponse,
  DeleteStudioRoomResponse,
  ListStudioRoomInfosResponse,
  CreateStudioRoomInfoResponse,
  UpdateStudioRoomInfoResponse,
  DeleteStudioRoomInfoResponse,
} from "@/proto/bst/v1/studio_room_service";

// スタジオのルーム一覧を取得
export const fetchStudioRooms = async (
  studioId: string | number
): Promise<ListStudioRoomsResponse> => {
  const { data } = await apiClient.get<ListStudioRoomsResponse>(
    `/studios/${studioId}/rooms`
  );
  return data;
};

// 特定のスタジオルームを取得
export const fetchStudioRoom = async (
  studioId: string | number,
  roomId: string | number
): Promise<GetStudioRoomResponse> => {
  const { data } = await apiClient.get<GetStudioRoomResponse>(
    `/studios/${studioId}/rooms/${roomId}`
  );
  return data;
};

// 新しいスタジオルームを作成
export const createStudioRoom = async (
  studioId: string | number,
  roomData: {
    name: string;
    capacity: number;
    price: number;
  }
): Promise<CreateStudioRoomResponse> => {
  const { data } = await apiClient.post<CreateStudioRoomResponse>(
    `/studios/${studioId}/rooms`,
    roomData
  );
  return data;
};

// スタジオルームを更新
export const updateStudioRoom = async (
  studioId: string | number,
  roomId: string | number,
  roomData: {
    name: string;
    capacity: number;
    size: number;
    price: number;
  }
): Promise<UpdateStudioRoomResponse> => {
  const { data } = await apiClient.put<UpdateStudioRoomResponse>(
    `/studios/${studioId}/rooms/${roomId}`,
    roomData
  );
  return data;
};

// スタジオルームを削除
export const deleteStudioRoom = async (
  studioId: string | number,
  roomId: string | number
): Promise<DeleteStudioRoomResponse> => {
  const { data } = await apiClient.delete<DeleteStudioRoomResponse>(
    `/studios/${studioId}/rooms/${roomId}`
  );
  return data;
};

// スタジオルーム情報一覧を取得
export const fetchStudioRoomInfos = async (
  studioId: string | number,
  roomId: string | number
): Promise<ListStudioRoomInfosResponse> => {
  const { data } = await apiClient.get<ListStudioRoomInfosResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos`
  );
  return data;
};

// 新しいスタジオルーム情報を作成
export const createStudioRoomInfo = async (
  studioId: string | number,
  roomId: string | number,
  infoData: {
    type: string;
    key: string;
    value: string;
  }
): Promise<CreateStudioRoomInfoResponse> => {
  const { data } = await apiClient.post<CreateStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos`,
    infoData
  );
  return data;
};

// スタジオルーム情報を更新
export const updateStudioRoomInfo = async (
  studioId: string | number,
  roomId: string | number,
  infoId: string | number,
  infoData: {
    type: string;
    key: string;
    value: string;
  }
): Promise<UpdateStudioRoomInfoResponse> => {
  const { data } = await apiClient.put<UpdateStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos/${infoId}`,
    infoData
  );
  return data;
};

// スタジオルーム情報を削除
export const deleteStudioRoomInfo = async (
  studioId: string | number,
  roomId: string | number,
  infoId: string | number
): Promise<DeleteStudioRoomInfoResponse> => {
  const { data } = await apiClient.delete<DeleteStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos/${infoId}`
  );
  return data;
};
