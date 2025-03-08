import { apiClient } from "@/lib/axios";
import { StudioRoom, StudioRoomInfo } from "@/proto/bst/v1/location";
import {
  CreateStudioRoomRequest,
  CreateStudioRoomResponse,
  ListStudioRoomsRequest,
  ListStudioRoomsResponse,
  UpdateStudioRoomRequest,
  UpdateStudioRoomResponse,
  DeleteStudioRoomRequest,
  DeleteStudioRoomResponse,
  CreateStudioRoomInfoRequest,
  CreateStudioRoomInfoResponse,
  ListStudioRoomInfosResponse,
  UpdateStudioRoomInfoRequest,
  UpdateStudioRoomInfoResponse,
  DeleteStudioRoomInfoRequest,
  DeleteStudioRoomInfoResponse,
} from "@/proto/bst/v1/studio_room_service";

// スタジオルーム一覧を取得
export const fetchStudioRooms = async (
  studioId: number
): Promise<ListStudioRoomsResponse> => {
  const { data } = await apiClient.get<ListStudioRoomsResponse>(
    `/studios/${studioId}/rooms`
  );
  return data;
};

// スタジオルームを作成
export const createStudioRoom = async (
  studioId: number,
  request: CreateStudioRoomRequest
): Promise<CreateStudioRoomResponse> => {
  const { data } = await apiClient.post<CreateStudioRoomResponse>(
    `/studios/${studioId}/rooms`,
    request
  );
  return data;
};

// スタジオルームを更新
export const updateStudioRoom = async (
  studioId: number,
  roomId: number,
  request: UpdateStudioRoomRequest
): Promise<UpdateStudioRoomResponse> => {
  const { data } = await apiClient.put<UpdateStudioRoomResponse>(
    `/studios/${studioId}/rooms/${roomId}`,
    request
  );
  return data;
};

// スタジオルームを削除
export const deleteStudioRoom = async (
  studioId: number,
  roomId: number
): Promise<DeleteStudioRoomResponse> => {
  const { data } = await apiClient.delete<DeleteStudioRoomResponse>(
    `/studios/${studioId}/rooms/${roomId}`
  );
  return data;
};

// スタジオルーム情報一覧を取得
export const fetchStudioRoomInfos = async (
  studioId: number,
  roomId: number
): Promise<ListStudioRoomInfosResponse> => {
  const { data } = await apiClient.get<ListStudioRoomInfosResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos`
  );
  return data;
};

// スタジオルーム情報を作成
export const createStudioRoomInfo = async (
  studioId: number,
  roomId: number,
  request: CreateStudioRoomInfoRequest
): Promise<CreateStudioRoomInfoResponse> => {
  const { data } = await apiClient.post<CreateStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos`,
    request
  );
  return data;
};

// スタジオルーム情報を更新
export const updateStudioRoomInfo = async (
  studioId: number,
  roomId: number,
  infoId: number,
  request: UpdateStudioRoomInfoRequest
): Promise<UpdateStudioRoomInfoResponse> => {
  const { data } = await apiClient.put<UpdateStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos/${infoId}`,
    request
  );
  return data;
};

// スタジオルーム情報を削除
export const deleteStudioRoomInfo = async (
  studioId: number,
  roomId: number,
  infoId: number
): Promise<DeleteStudioRoomInfoResponse> => {
  const { data } = await apiClient.delete<DeleteStudioRoomInfoResponse>(
    `/studios/${studioId}/rooms/${roomId}/infos/${infoId}`
  );
  return data;
};
