"use client";

import { useState, useEffect, useRef, Usable } from "react";
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
import React from "react";
import { useGenre, useUpdateGenre } from "@/features/genres/hooks";

const EditGenrePage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();
  const [name, setName] = useState("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data: genreData, isLoading, isError } = useGenre(id);
  const updateGenreMutation = useUpdateGenre(id);

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/genres/${id}/edit`);
    }
  }, [user, router, id]);

  // ジャンルデータのロード
  useEffect(() => {
    if (genreData?.genre) {
      setName(genreData.genre.name);
    }
  }, [genreData]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    try {
      await updateGenreMutation.mutateAsync(name);
      router.push("/community/genres");
    } catch (err) {
      console.error("Failed to update genre", err);
      setError("ジャンルの更新に失敗しました。後でもう一度お試しください。");
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

  if (isLoading) {
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

        {(error || isError) && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error ||
              "ジャンルの取得に失敗しました。後でもう一度お試しください。"}
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
            disabled={updateGenreMutation.isPending}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={updateGenreMutation.isPending}
              startIcon={
                updateGenreMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {updateGenreMutation.isPending ? "保存中..." : "保存する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={updateGenreMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditGenrePage;
