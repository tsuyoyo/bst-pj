import { apiClient } from "@/lib/axios";
import { Part } from "@/proto/bst/v1/content";
import {
  ListPartsResponse,
  GetPartResponse,
  CreatePartResponse,
  UpdatePartResponse,
} from "@/proto/bst/v1/part_service";

// パーツ一覧を取得
export const fetchParts = async (
  pageSize?: number,
  pageToken?: string
): Promise<ListPartsResponse> => {
  const params: Record<string, any> = {};
  params.pageSize = pageSize ?? 10;
  params.pageToken = pageToken ?? "";
  const { data } = await apiClient.get<ListPartsResponse>("/parts", { params });
  return data;
};

// 特定のパーツを取得
export const fetchPart = async (
  id: string | number
): Promise<GetPartResponse> => {
  const { data } = await apiClient.get<GetPartResponse>(`/parts/${id}`);
  return data;
};

// 新しいパーツを作成
export const createPart = async (partData: {
  name: string;
  description: string;
}): Promise<CreatePartResponse> => {
  const { data } = await apiClient.post<CreatePartResponse>("/parts", partData);
  return data;
};

// パーツを更新
export const updatePart = async (
  id: string | number,
  partData: { name: string; description: string }
): Promise<UpdatePartResponse> => {
  const { data } = await apiClient.put<UpdatePartResponse>(
    `/parts/${id}`,
    partData
  );
  return data;
};
