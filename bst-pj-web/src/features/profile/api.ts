import { apiClient } from "@/lib/axios";
import {
  GetMyProfileResponse,
  UpdateResponse,
} from "@/proto/bst/v1/my_profile_service";
import { ProfileUpdateField } from "./types";

/**
 * Get current user's profile
 * @returns Promise with profile and email
 */
export const getMyProfile = async (): Promise<GetMyProfileResponse> => {
  try {
    const { data } = await apiClient.get<GetMyProfileResponse>("/my-profile");
    return data;
  } catch (error) {
    throw new Error("プロフィール情報の取得に失敗しました");
  }
};

/**
 * Update user introduction
 * @param introduction - New introduction text
 * @returns Promise with update response
 */
export const updateIntroduction = async (
  introduction: string
): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>(
      "/my-profile/introduction",
      {
        introduction,
      }
    );
    return data;
  } catch (error) {
    throw new Error("自己紹介の更新に失敗しました");
  }
};

/**
 * Update user name
 * @param name - New user name
 * @returns Promise with update response
 */
export const updateUserName = async (name: string): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>("/my-profile/name", {
      name,
    });
    return data;
  } catch (error) {
    throw new Error("ユーザー名の更新に失敗しました");
  }
};

/**
 * Update user icon
 * @param icon - New icon URL
 * @returns Promise with update response
 */
export const updateUserIcon = async (icon: string): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>("/my-profile/icon", {
      icon,
    });
    return data;
  } catch (error) {
    throw new Error("アイコンの更新に失敗しました");
  }
};

/**
 * Update user genres
 * @param genreIds - Array of genre IDs
 * @returns Promise with update response
 */
export const updateUserGenres = async (
  genreIds: number[]
): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>("/my-profile/genres", {
      genreIds,
    });
    return data;
  } catch (error) {
    throw new Error("ジャンル情報の更新に失敗しました");
  }
};

/**
 * Update user artists
 * @param artistIds - Array of artist IDs
 * @returns Promise with update response
 */
export const updateUserArtists = async (
  artistIds: number[]
): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>(
      "/my-profile/artists",
      {
        artistIds,
      }
    );
    return data;
  } catch (error) {
    throw new Error("アーティスト情報の更新に失敗しました");
  }
};

/**
 * Update user parts
 * @param partIds - Array of part IDs
 * @returns Promise with update response
 */
export const updateUserParts = async (
  partIds: number[]
): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>("/my-profile/parts", {
      partIds,
    });
    return data;
  } catch (error) {
    throw new Error("担当パート情報の更新に失敗しました");
  }
};

/**
 * Update user area
 * @param prefectureId - Prefecture ID
 * @returns Promise with update response
 */
export const updateUserArea = async (
  prefectureId: number
): Promise<UpdateResponse> => {
  try {
    const { data } = await apiClient.put<UpdateResponse>("/my-profile/area", {
      prefectureId,
    });
    return data;
  } catch (error) {
    throw new Error("活動エリア情報の更新に失敗しました");
  }
};

/**
 * Update profile field based on field type
 * @param field - Field to update
 * @param value - New value
 * @returns Promise with update response
 */
export const updateProfileField = async (
  field: ProfileUpdateField["field"],
  value: ProfileUpdateField["value"]
): Promise<UpdateResponse> => {
  switch (field) {
    case "name":
      return updateUserName(value as string);
    case "introduction":
      return updateIntroduction(value as string);
    case "icon":
      return updateUserIcon(value as string);
    case "genres":
      return updateUserGenres(value as number[]);
    case "artists":
      return updateUserArtists(value as number[]);
    case "parts":
      return updateUserParts(value as number[]);
    case "area":
      return updateUserArea(value as number);
    default:
      throw new Error("不明なフィールドタイプです");
  }
};
