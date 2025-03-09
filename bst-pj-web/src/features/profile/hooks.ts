import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import {
  getMyProfile,
  updateProfileField,
  getIconUploadUrl,
  uploadFileToSignedUrl,
  uploadIconToBackend,
} from "./api";
import { ProfileUpdateField } from "./types";
import { useGenres } from "@/features/genres/hooks";
import { useArtists } from "@/features/artists/hooks";
import { useParts } from "@/features/parts/hooks";
import { useState, useEffect } from "react";
import { useDispatch } from "react-redux";
import { updateUser } from "@/features/auth/authSlice";

/**
 * Custom hook to fetch current user's profile
 */
export const useMyProfile = () => {
  const dispatch = useDispatch();

  const result = useQuery({
    queryKey: ["profile", "me"],
    queryFn: getMyProfile,
    retry: false,
    refetchOnWindowFocus: false,
  });

  // データが変更されたときにReduxストアを更新
  useEffect(() => {
    if (result.data?.profile?.user) {
      dispatch(updateUser(result.data.profile.user));
    }
  }, [result.data, dispatch]);

  return result;
};

/**
 * Custom hook to update profile fields
 */
export const useUpdateProfile = () => {
  const queryClient = useQueryClient();
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: ({ field, value }: ProfileUpdateField) => {
      return updateProfileField(field, value);
    },
    onSuccess: (data) => {
      // 成功時にプロフィールデータを更新
      queryClient.setQueryData(["profile", "me"], (oldData: any) => {
        if (oldData) {
          return {
            ...oldData,
            profile: data.profile,
          };
        }
        return oldData;
      });

      // Reduxストアのユーザー情報も更新
      if (data.profile?.user) {
        dispatch(updateUser(data.profile.user));
      }
    },
  });
};

/**
 * アイコンアップロード用のカスタムフック
 */
export const useIconUpload = (maxSizeAfterCompression = 512 * 1024) => {
  // 0.5MB default
  const [isUploading, setIsUploading] = useState(false);
  const queryClient = useQueryClient();
  const dispatch = useDispatch();

  // 画像圧縮処理
  const compressImage = async (file: File): Promise<File> => {
    return new Promise((resolve, reject) => {
      const reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = (event) => {
        const img = new Image();
        img.src = event.target?.result as string;
        img.onload = () => {
          // 最大サイズを設定（512x512ピクセル）
          const MAX_SIZE = 512;

          // 元のアスペクト比を維持しながら、最大サイズに収まるように計算
          let width = img.width;
          let height = img.height;

          if (width > height) {
            // 横長の画像
            if (width > MAX_SIZE) {
              height = Math.round(height * (MAX_SIZE / width));
              width = MAX_SIZE;
            }
          } else {
            // 縦長または正方形の画像
            if (height > MAX_SIZE) {
              width = Math.round(width * (MAX_SIZE / height));
              height = MAX_SIZE;
            }
          }

          console.log(
            `元のサイズ: ${img.width}x${img.height}, 圧縮後: ${width}x${height}`
          );

          const canvas = document.createElement("canvas");
          const ctx = canvas.getContext("2d");
          canvas.width = width;
          canvas.height = height;
          ctx?.drawImage(img, 0, 0, width, height);
          canvas.toBlob(
            (blob) => {
              if (!blob) {
                reject(new Error("画像の圧縮に失敗しました"));
                return;
              }

              // 圧縮後のサイズチェック
              if (blob.size > maxSizeAfterCompression) {
                reject(
                  new Error(
                    `ファイルサイズが大きすぎます (最大 ${
                      maxSizeAfterCompression / 1024 / 1024
                    }MB)`
                  )
                );
                return;
              }

              const compressedFile = new File([blob], file.name, {
                type: "image/jpeg",
                lastModified: Date.now(),
              });
              resolve(compressedFile);
            },
            "image/jpeg",
            0.7 // 画質 (0-1)
          );
        };
      };
      reader.onerror = () =>
        reject(new Error("ファイルの読み込みに失敗しました"));
    });
  };

  // アイコンアップロード処理
  const uploadIcon = async (file: File): Promise<void> => {
    try {
      setIsUploading(true);

      // 1. 画像を圧縮（この中でサイズチェックも行う）
      const compressedFile = await compressImage(file);

      // 2. バックエンドに直接アップロード
      const { iconUrl } = await uploadIconToBackend(compressedFile);

      // 3. キャッシュを更新
      queryClient.invalidateQueries({ queryKey: ["profile", "me"] });

      // 4. Reduxストアのユーザー情報も更新
      dispatch(updateUser({ icon: iconUrl }));
    } catch (error) {
      console.error("Icon upload failed:", error);
      throw error;
    } finally {
      setIsUploading(false);
    }
  };

  return {
    uploadIcon,
    isUploading,
  };
};

// 既存のフックをエクスポート
export { useGenres, useArtists, useParts };
