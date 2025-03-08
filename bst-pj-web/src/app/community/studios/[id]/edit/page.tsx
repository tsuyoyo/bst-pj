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

const EditStudioPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);

  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [googleMapsUrl, setGoogleMapsUrl] = useState("");
  const [additionalInfo, setAdditionalInfo] = useState("");
  const [areaId, setAreaId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const {
    data: studioData,
    isLoading: isStudioLoading,
    isError: isStudioError,
  } = useStudio(id);
  const updateStudioMutation = useUpdateStudio(id);

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/studios/${id}/edit`);
    }
  }, [user, router, id]);

  // スタジオデータのロード
  useEffect(() => {
    if (studioData?.studio) {
      setName(studioData.studio.name);
      setDescription(studioData.studio.description || "");
      setGoogleMapsUrl(studioData.studio.googleMapsUrl || "");
      setAdditionalInfo(studioData.studio.additionalInfo || "");
      setAreaId(studioData.studio.areaId || "");
    }
  }, [studioData]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (!name.trim()) {
      setError("スタジオ名を入力してください。");
      return;
    }

    if (!areaId) {
      setError("エリアを選択してください。");
      return;
    }

    try {
      await updateStudioMutation.mutateAsync({
        name,
        description,
        googleMapsUrl,
        additionalInfo,
        areaId: Number(areaId),
      });
      router.push(`/community/studios/${id}`);
    } catch (err) {
      console.error("Failed to update studio", err);
      setError("スタジオの更新に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push(`/community/studios/${id}`);
  };

  const handleAreaChange = (event: SelectChangeEvent<number | "">) => {
    setAreaId(event.target.value as number | "");
  };

  if (isStudioLoading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress />
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
        <Button
          sx={{ mt: 2 }}
          onClick={() => router.push("/community/studios")}
        >
          一覧に戻る
        </Button>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          スタジオ編集
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
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
            rows={4}
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
              value={areaId}
              label="エリア"
              onChange={handleAreaChange}
              disabled={updateStudioMutation.isPending}
            >
              <MenuItem value={1}>東京</MenuItem>
              <MenuItem value={2}>神奈川</MenuItem>
              <MenuItem value={3}>埼玉</MenuItem>
              <MenuItem value={4}>千葉</MenuItem>
              <MenuItem value={5}>大阪</MenuItem>
              <MenuItem value={6}>京都</MenuItem>
              <MenuItem value={7}>兵庫</MenuItem>
              <MenuItem value={8}>名古屋</MenuItem>
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
