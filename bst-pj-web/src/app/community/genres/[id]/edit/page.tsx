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
import {
  GetGenreResponse,
  UpdateGenreResponse,
} from "@/proto/bst/v1/genre_service";
import { useApi } from "@/hooks/useApi";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const EditGenrePage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const isMounted = useRef(true);
  const { user } = useSelector((state: RootState) => state.auth);

  const getApi = useApi<GetGenreResponse>();
  const updateApi = useApi<UpdateGenreResponse>();

  // Redirect if not logged in
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/genres/${params.id}/edit`);
    }
  }, [user, router, params.id]);

  useEffect(() => {
    isMounted.current = true;

    const fetchGenre = async () => {
      setLoading(true);
      try {
        const response = await getApi.execute("get", `/genres/${params.id}`);
        if (isMounted.current && response?.genre) {
          setName(response.genre.name);
          setDescription(response.genre.description || "");
        }
        if (isMounted.current) {
          setError(null);
        }
      } catch (err) {
        console.error("Failed to fetch genre", err);
        if (isMounted.current) {
          setError(
            "ジャンルの取得に失敗しました。後でもう一度お試しください。"
          );
        }
      } finally {
        if (isMounted.current) {
          setLoading(false);
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
      const response = await updateApi.execute("put", `/genres/${params.id}`, {
        data: {
          name,
          description,
        },
      });

      if (response) {
        router.push(`/community/genres/${params.id}`);
      }
    } catch (err) {
      console.error("Failed to update genre", err);
      setError("ジャンルの更新に失敗しました。後でもう一度お試しください。");
    } finally {
      setSaving(false);
    }
  };

  const handleCancel = () => {
    router.push(`/community/genres/${params.id}`);
  };

  if (!user) {
    return (
      <Container className="page-container">
        <Alert severity="info">ログインが必要です。リダイレクトします...</Alert>
      </Container>
    );
  }

  if (loading) {
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

          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={4}
            value={description}
            onChange={(e) => setDescription(e.target.value)}
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
