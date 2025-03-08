"use client";

import { useState, useEffect } from "react";
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
import { useCreateStudio } from "@/features/studios/hooks";
import { useAreas } from "@/features/areas/hooks";

const NewStudioPage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [googleMapsUrl, setGoogleMapsUrl] = useState("");
  const [additionalInfo, setAdditionalInfo] = useState("");
  const [prefectureId, setPrefectureId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const createStudioMutation = useCreateStudio();

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
      router.push("/login?redirect=/studios/new");
    }
  }, [user, router]);

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
      await createStudioMutation.mutateAsync({
        name,
        description,
        googleMapsUrl,
        additionalInfo,
        prefectureId,
      });
      router.push("/studios");
    } catch (err) {
      console.error("Failed to create studio", err);
      setError("スタジオの登録に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push("/studios");
  };

  const handleAreaChange = (event: SelectChangeEvent<number | "">) => {
    setPrefectureId(event.target.value as number | "");
  };

  if (!user) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress size={40} />
        </Box>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          新規スタジオ登録
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
            disabled={createStudioMutation.isPending}
          />

          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={3}
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            disabled={createStudioMutation.isPending}
          />

          <TextField
            label="Google Maps URL"
            fullWidth
            margin="normal"
            value={googleMapsUrl}
            onChange={(e) => setGoogleMapsUrl(e.target.value)}
            disabled={createStudioMutation.isPending}
          />

          <TextField
            label="追加情報"
            fullWidth
            margin="normal"
            multiline
            rows={2}
            value={additionalInfo}
            onChange={(e) => setAdditionalInfo(e.target.value)}
            disabled={createStudioMutation.isPending}
          />

          <FormControl fullWidth margin="normal" required>
            <InputLabel id="area-select-label">エリア</InputLabel>
            <Select
              labelId="area-select-label"
              id="area-select"
              value={prefectureId}
              label="エリア"
              onChange={handleAreaChange}
              disabled={createStudioMutation.isPending || isAreasLoading}
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
              disabled={createStudioMutation.isPending}
            >
              キャンセル
            </Button>
            <Button
              type="submit"
              variant="contained"
              disabled={createStudioMutation.isPending}
              startIcon={
                createStudioMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {createStudioMutation.isPending ? "登録中..." : "登録する"}
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewStudioPage;
