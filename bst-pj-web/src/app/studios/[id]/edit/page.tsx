"use client";

import { useState, useEffect, useRef, Usable } from "react";
import React from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  TextField,
  Button,
  Alert,
  CircularProgress,
  Grid,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  SelectChangeEvent,
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useStudio, useUpdateStudio } from "@/features/studios/hooks";
import { useAreas } from "@/features/areas/hooks";

const EditStudioPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);

  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [googleMapsUrl, setGoogleMapsUrl] = useState("");
  const [additionalInfo, setAdditionalInfo] = useState("");
  const [prefectureId, setPrefectureId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const {
    data: studioData,
    isLoading: isStudioLoading,
    isError: isStudioError,
  } = useStudio(id);
  const updateStudioMutation = useUpdateStudio(id);

  // エリア情報を取得
  const {
    data: areasData,
    isLoading: isAreasLoading,
    error: areasError,
  } = useAreas();
  const areas = areasData?.areas || [];

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/studios/${id}/edit`);
    }
  }, [user, router, id]);

  // スタジオデータのロード
  useEffect(() => {
    if (studioData?.studio) {
      setName(studioData.studio.name);
      setDescription(studioData.studio.description || "");
      setGoogleMapsUrl(studioData.studio.googleMapsUrl || "");
      setAdditionalInfo(studioData.studio.additionalInfo || "");
      setPrefectureId(studioData.studio.area.prefectureId || "");
    }
  }, [studioData]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (!name.trim()) {
      setError("スタジオ名を入力してください。");
      return;
    }

    if (!prefectureId) {
      setError("エリアを選択してください。");
      return;
    }

    try {
      await updateStudioMutation.mutateAsync({
        name,
        description,
        googleMapsUrl,
        additionalInfo,
        prefectureId,
      });
      router.push(`/studios/${id}`);
    } catch (err) {
      console.error("Failed to update studio", err);
      setError("スタジオの更新に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push(`/studios/${id}`);
  };

  const handleAreaChange = (event: SelectChangeEvent<number | "">) => {
    setPrefectureId(event.target.value as number | "");
  };

  if (isStudioLoading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress size={40} />
        </Box>
      </Container>
    );
  }

  if (isStudioError) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          スタジオの取得に失敗しました。後でもう一度お試しください。
        </Alert>
        <Button sx={{ mt: 2 }} onClick={() => router.push("/studios")}>
          一覧に戻る
        </Button>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          スタジオ情報編集
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit} noValidate>
          <TextField
            label="スタジオ名"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={updateStudioMutation.isPending}
          />

          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={3}
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            disabled={updateStudioMutation.isPending}
          />

          <TextField
            label="Google Maps URL"
            fullWidth
            margin="normal"
            value={googleMapsUrl}
            onChange={(e) => setGoogleMapsUrl(e.target.value)}
            disabled={updateStudioMutation.isPending}
          />

          <TextField
            label="追加情報"
            fullWidth
            margin="normal"
            multiline
            rows={2}
            value={additionalInfo}
            onChange={(e) => setAdditionalInfo(e.target.value)}
            disabled={updateStudioMutation.isPending}
          />

          <FormControl fullWidth margin="normal" required>
            <InputLabel id="area-select-label">エリア</InputLabel>
            <Select
              labelId="area-select-label"
              id="area-select"
              value={prefectureId}
              label="エリア"
              onChange={handleAreaChange}
              disabled={updateStudioMutation.isPending || isAreasLoading}
            >
              {isAreasLoading ? (
                <MenuItem disabled>読み込み中...</MenuItem>
              ) : areasError ? (
                <MenuItem disabled>エリア情報の取得に失敗しました</MenuItem>
              ) : (
                areas.map((area) => (
                  <MenuItem key={area.prefectureId} value={area.prefectureId}>
                    {area.name}
                  </MenuItem>
                ))
              )}
            </Select>
          </FormControl>

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={updateStudioMutation.isPending}
            >
              キャンセル
            </Button>
            <Button
              type="submit"
              variant="contained"
              disabled={updateStudioMutation.isPending}
              startIcon={
                updateStudioMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {updateStudioMutation.isPending ? "保存中..." : "保存する"}
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditStudioPage;
