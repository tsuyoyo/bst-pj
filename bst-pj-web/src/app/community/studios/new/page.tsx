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

const NewStudioPage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [googleMapsUrl, setGoogleMapsUrl] = useState("");
  const [additionalInfo, setAdditionalInfo] = useState("");
  const [areaId, setAreaId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const createStudioMutation = useCreateStudio();

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push("/login?redirect=/community/studios/new");
    }
  }, [user, router]);

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
      await createStudioMutation.mutateAsync({
        name,
        description,
        googleMapsUrl,
        additionalInfo,
        areaId: Number(areaId),
      });
      router.push("/community/studios");
    } catch (err) {
      console.error("Failed to create studio", err);
      setError("スタジオの登録に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push("/community/studios");
  };

  const handleAreaChange = (event: SelectChangeEvent<number | "">) => {
    setAreaId(event.target.value as number | "");
  };

  if (!user) {
    return (
      <Container className="page-container">
        <Alert severity="info">ログインが必要です。リダイレクトします...</Alert>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          新規スタジオ登録
        </Typography>
        <Typography variant="body1" paragraph>
          新しいスタジオを登録して、コミュニティに貢献しましょう。
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
            disabled={createStudioMutation.isPending}
          />

          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={4}
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
              value={areaId}
              label="エリア"
              onChange={handleAreaChange}
              disabled={createStudioMutation.isPending}
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
