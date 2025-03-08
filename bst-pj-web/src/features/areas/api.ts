import { apiClient } from "@/lib/axios";
import { Area } from "@/proto/bst/v1/area";
import { ListAreasResponse } from "@/proto/bst/v1/area_service";

// エリア一覧を取得
export const fetchAreas = async (): Promise<ListAreasResponse> => {
  const { data } = await apiClient.get<ListAreasResponse>("/areas");
  return data;
};
