"use client";

import { useState, useRef } from "react";
import {
  Box,
  Button,
  CircularProgress,
  Typography,
  IconButton,
  Tooltip,
} from "@mui/material";
import { PhotoCamera as CameraIcon } from "@mui/icons-material";

interface ImageUploaderProps {
  onUpload: (file: File) => Promise<void>;
  isUploading: boolean;
  accept?: string;
  maxSize?: number; // in bytes (now used for post-compression check)
  onError?: (message: string) => void; // エラーを外部で処理するためのコールバック
}

export default function ImageUploader({
  onUpload,
  isUploading,
  accept = "image/jpeg, image/png, image/gif",
  maxSize = 5 * 1024 * 1024, // 5MB default
  onError,
}: ImageUploaderProps) {
  const [error, setError] = useState<string | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleFileChange = async (
    event: React.ChangeEvent<HTMLInputElement>
  ) => {
    const files = event.target.files;
    if (!files || files.length === 0) return;

    const file = files[0];

    // ファイル形式チェック
    const fileType = file.type.toLowerCase();
    const acceptedTypes = accept
      .split(",")
      .map((type) => type.trim().toLowerCase());
    if (!acceptedTypes.some((type) => fileType.match(type))) {
      const errorMessage = `サポートされていないファイル形式です (${accept})`;
      setError(errorMessage);
      if (onError) onError(errorMessage);
      return;
    }

    setError(null);

    try {
      await onUpload(file);
      // 成功したらinput要素をリセット
      if (fileInputRef.current) {
        fileInputRef.current.value = "";
      }
    } catch (err: any) {
      // エラーメッセージを表示
      const errorMessage = err?.message || "アップロードに失敗しました";
      setError(errorMessage);
      if (onError) onError(errorMessage);
      console.error(err);
    }
  };

  const triggerFileInput = () => {
    fileInputRef.current?.click();
  };

  return (
    <Box>
      <input
        type="file"
        accept={accept}
        onChange={handleFileChange}
        ref={fileInputRef}
        style={{ display: "none" }}
      />

      <Tooltip title="画像を選択">
        <IconButton
          color="primary"
          onClick={triggerFileInput}
          disabled={isUploading}
          size="small"
          sx={{
            bgcolor: "background.paper",
            boxShadow: 1,
            "&:hover": { bgcolor: "action.hover" },
            width: 32,
            height: 32,
          }}
        >
          {isUploading ? (
            <CircularProgress size={16} />
          ) : (
            <CameraIcon fontSize="small" />
          )}
        </IconButton>
      </Tooltip>

      {error && (
        <Typography
          color="error"
          variant="caption"
          sx={{ mt: 1, display: "block" }}
        >
          {error}
        </Typography>
      )}
    </Box>
  );
}
