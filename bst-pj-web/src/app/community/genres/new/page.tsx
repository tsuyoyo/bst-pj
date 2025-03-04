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
import { useCreateGenre } from "@/features/genres/hooks";

const NewGenrePage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const createGenreMutation = useCreateGenre();

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push("/login?redirect=/community/genres/new");
    }
  }, [user, router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    try {
      await createGenreMutation.mutateAsync(name);
      router.push("/community/genres");
    } catch (err) {
      console.error("Failed to create genre", err);
      setError("ジャンルの登録に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push("/community/genres");
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
          新規ジャンル登録
        </Typography>
        <Typography variant="body1" paragraph>
          新しい音楽ジャンルを登録して、コミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="ジャンル名"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={createGenreMutation.isPending}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={createGenreMutation.isPending}
              startIcon={
                createGenreMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {createGenreMutation.isPending ? "登録中..." : "登録する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={createGenreMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewGenrePage;
