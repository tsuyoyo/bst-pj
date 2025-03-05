import { apiClient } from "@/lib/axios";
import { Artist } from "@/proto/bst/v1/content";
import {
  ListArtistsResponse,
  GetArtistResponse,
  CreateArtistResponse,
  UpdateArtistResponse,
} from "@/proto/bst/v1/artist_service";

// アーティスト一覧を取得
export const fetchArtists = async (
  pageSize?: number,
  pageToken?: string
): Promise<ListArtistsResponse> => {
  const params: Record<string, any> = {};
  params.pageSize = pageSize ?? 10;
  params.pageToken = pageToken ?? "";

  const { data } = await apiClient.get<ListArtistsResponse>("/artists", {
    params,
  });
  return data;
};

// 特定のアーティストを取得
export const fetchArtist = async (
  id: string | number
): Promise<GetArtistResponse> => {
  const { data } = await apiClient.get<GetArtistResponse>(`/artists/${id}`);
  return data;
};

// 新しいアーティストを作成
export const createArtist = async (artistData: {
  name: string;
  description: string;
  website: string;
}): Promise<CreateArtistResponse> => {
  const { data } = await apiClient.post<CreateArtistResponse>(
    "/artists",
    artistData
  );
  return data;
};

// アーティストを更新
export const updateArtist = async (
  id: string | number,
  artistData: { name: string; description: string }
): Promise<UpdateArtistResponse> => {
  const { data } = await apiClient.put<UpdateArtistResponse>(
    `/artists/${id}`,
    artistData
  );
  return data;
};
