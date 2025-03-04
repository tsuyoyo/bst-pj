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
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useCreatePart } from "@/features/parts/hooks";

const NewPartPage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const createPartMutation = useCreatePart();

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push("/login?redirect=/community/parts/new");
    }
  }, [user, router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    try {
      await createPartMutation.mutateAsync({ name, description });
      router.push("/community/parts");
    } catch (err) {
      console.error("Failed to create part", err);
      setError("パートの登録に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push("/community/parts");
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
          新規パート登録
        </Typography>
        <Typography variant="body1" paragraph>
          新しい楽器パートを登録して、コミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="パート名"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={createPartMutation.isPending}
          />

          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={4}
            required
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            disabled={createPartMutation.isPending}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={createPartMutation.isPending}
              startIcon={
                createPartMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {createPartMutation.isPending ? "登録中..." : "登録する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={createPartMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewPartPage;
