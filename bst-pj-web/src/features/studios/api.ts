import { apiClient } from "@/lib/axios";
import { Studio } from "@/proto/bst/v1/location";
import {
  ListStudiosResponse,
  GetStudioResponse,
  CreateStudioResponse,
  UpdateStudioResponse,
  DeleteStudioResponse,
} from "@/proto/bst/v1/studio_service";
import { Area } from "@/proto/bst/v1/area";

// スタジオ一覧を取得
export const fetchStudios = async (
  pageSize?: number,
  pageToken?: string,
  prefectureId?: number
): Promise<ListStudiosResponse> => {
  const params: Record<string, any> = {};
  params.pageSize = pageSize ?? 10;

  if (pageToken) {
    params.pageToken = pageToken;
  }

  params.prefectureId = prefectureId ? prefectureId : 0;

  const { data } = await apiClient.get<ListStudiosResponse>("/studios", {
    params,
  });
  return data;
};

// 特定のスタジオを取得
export const fetchStudio = async (
  id: string | number
): Promise<GetStudioResponse> => {
  const { data } = await apiClient.get<GetStudioResponse>(`/studios/${id}`);
  return data;
};

// 新しいスタジオを作成
export const createStudio = async (studioData: {
  name: string;
  description: string;
  googleMapsUrl: string;
  additionalInfo: string;
  prefectureId: number;
}): Promise<CreateStudioResponse> => {
  const { data } = await apiClient.post<CreateStudioResponse>(
    "/studios",
    studioData
  );
  return data;
};

// スタジオを更新
export const updateStudio = async (
  id: string | number,
  studioData: {
    name?: string;
    description?: string;
    googleMapsUrl?: string;
    additionalInfo?: string;
    prefectureId?: number;
  }
): Promise<UpdateStudioResponse> => {
  const { data } = await apiClient.put<UpdateStudioResponse>(
    `/studios/${id}`,
    studioData
  );
  return data;
};

// スタジオを削除
export const deleteStudio = async (
  id: string | number
): Promise<DeleteStudioResponse> => {
  const { data } = await apiClient.delete<DeleteStudioResponse>(
    `/studios/${id}`
  );
  return data;
};
