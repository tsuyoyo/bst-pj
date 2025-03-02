"use client";

import { useState, useEffect, useRef } from "react";
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
import { UpdateGenreResponse } from "@/proto/bst/v1/genre_service";
import { useApi } from "@/hooks/useApi";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { Genre } from "@/proto/bst/v1/content";

const EditGenrePage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const isMounted = useRef(true);
  const { user } = useSelector((state: RootState) => state.auth);

  const api = useApi<UpdateGenreResponse>();
  const genresApi = useApi<{ genres: Genre[] }>();

  // Redirect if not logged in
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/genres/${params.id}/edit`);
    }
  }, [user, router, params.id]);

  useEffect(() => {
    isMounted.current = true;

    const fetchGenre = async () => {
      try {
        // ジャンル一覧から該当のジャンルを取得
        const response = await genresApi.execute("get", "/genres");
        if (isMounted.current && response?.genres) {
          const genre = response.genres.find((g) => g.id === Number(params.id));
          if (genre) {
            setName(genre.name);
          } else {
            setError("指定されたジャンルが見つかりませんでした。");
          }
        }
      } catch (err) {
        console.error("Failed to fetch genre", err);
        if (isMounted.current) {
          setError(
            "ジャンルの取得に失敗しました。後でもう一度お試しください。"
          );
        }
      }
    };

    if (user) {
      fetchGenre();
    }

    return () => {
      isMounted.current = false;
    };
  }, [params.id, user]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSaving(true);
    setError(null);

    try {
      const response = await api.execute("put", `/genres/${params.id}`, {
        data: {
          name,
        },
      });

      if (response) {
        router.push("/community/genres");
      }
    } catch (err) {
      console.error("Failed to update genre", err);
      setError("ジャンルの更新に失敗しました。後でもう一度お試しください。");
    } finally {
      setSaving(false);
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

  if (genresApi.loading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress />
        </Box>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          ジャンル編集
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
            disabled={saving}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={saving}
              startIcon={saving ? <CircularProgress size={20} /> : null}
            >
              {saving ? "保存中..." : "保存する"}
            </Button>
            <Button variant="outlined" onClick={handleCancel} disabled={saving}>
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditGenrePage;
