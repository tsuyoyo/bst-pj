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
import { useApi } from "@/hooks/useApi";
import { CreateGenreResponse } from "@/proto/bst/v1/genre_service";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const NewGenrePage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const api = useApi<CreateGenreResponse>();
  const { user } = useSelector((state: RootState) => state.auth);

  // Redirect if not logged in
  useEffect(() => {
    if (!user) {
      router.push("/login?redirect=/community/genres/new");
    }
  }, [user, router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    try {
      const response = await api.execute("post", "/genres", {
        data: {
          name,
        },
      });

      if (response) {
        // 一覧ページに遷移するように修正
        router.push("/community/genres");
      }
    } catch (err) {
      console.error("Failed to create genre", err);
      setError("ジャンルの登録に失敗しました。後でもう一度お試しください。");
    } finally {
      setLoading(false);
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
            disabled={loading}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={loading}
              startIcon={loading ? <CircularProgress size={20} /> : null}
            >
              {loading ? "登録中..." : "登録する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={loading}
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
