import { useQuery } from "@tanstack/react-query";
import { fetchAreas } from "./api";

// エリア一覧を取得するフック
export const useAreas = () => {
  return useQuery({
    queryKey: ["areas"],
    queryFn: fetchAreas,
  });
};
