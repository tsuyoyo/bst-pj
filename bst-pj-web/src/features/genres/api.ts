import { apiClient } from "@/lib/axios";
import { Genre } from "@/proto/bst/v1/content";
import {
  ListGenresResponse,
  GetGenreResponse,
  CreateGenreResponse,
  UpdateGenreResponse,
} from "@/proto/bst/v1/genre_service";

// ジャンル一覧を取得
export const fetchGenres = async (): Promise<ListGenresResponse> => {
  const { data } = await apiClient.get<ListGenresResponse>("/genres");
  return data;
};

// 特定のジャンルを取得
export const fetchGenre = async (
  id: string | number
): Promise<GetGenreResponse> => {
  const { data } = await apiClient.get<GetGenreResponse>(`/genres/${id}`);
  return data;
};

// 新しいジャンルを作成
export const createGenre = async (
  name: string
): Promise<CreateGenreResponse> => {
  const { data } = await apiClient.post<CreateGenreResponse>("/genres", {
    name,
  });
  return data;
};

// ジャンルを更新
export const updateGenre = async (
  id: string | number,
  name: string
): Promise<UpdateGenreResponse> => {
  const { data } = await apiClient.put<UpdateGenreResponse>(`/genres/${id}`, {
    name,
  });
  return data;
};
