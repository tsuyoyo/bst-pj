import { apiClient } from "@/lib/axios";
import { Song } from "@/proto/bst/v1/content";
import {
  ListSongsResponse,
  GetSongResponse,
  CreateSongResponse,
  UpdateSongResponse,
} from "@/proto/bst/v1/song_service";

// 曲一覧を取得
export const fetchSongs = async (
  pageSize?: number,
  pageToken?: string
): Promise<ListSongsResponse> => {
  const params: Record<string, any> = {};

  params.pageSize = pageSize ?? 10;

  if (pageToken) {
    params.pageToken = pageToken;
  }

  const { data } = await apiClient.get<ListSongsResponse>("/songs", {
    params,
  });
  return data;
};

// 特定の曲を取得
export const fetchSong = async (
  id: string | number
): Promise<GetSongResponse> => {
  const { data } = await apiClient.get<GetSongResponse>(`/songs/${id}`);
  return data;
};

// 新しい曲を作成
export const createSong = async (songData: {
  title: string;
  artistId: number;
}): Promise<CreateSongResponse> => {
  const { data } = await apiClient.post<CreateSongResponse>("/songs", songData);
  return data;
};

// 曲を更新
export const updateSong = async (
  id: string | number,
  songData: { title: string; artistId: number }
): Promise<UpdateSongResponse> => {
  const { data } = await apiClient.put<UpdateSongResponse>(
    `/songs/${id}`,
    songData
  );
  return data;
};
