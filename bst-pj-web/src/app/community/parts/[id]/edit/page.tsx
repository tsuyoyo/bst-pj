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
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { usePart, useUpdatePart } from "@/features/parts/hooks";

const EditPartPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);

  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, isError } = usePart(id);
  const updatePartMutation = useUpdatePart(id);

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/parts/${id}/edit`);
    }
  }, [user, router, id]);

  // パートデータのロード
  useEffect(() => {
    if (data?.part) {
      setName(data.part.name);
      setDescription(data.part.description);
    }
  }, [data]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    try {
      await updatePartMutation.mutateAsync({ name, description });
      router.push(`/community/parts/${id}`);
    } catch (err) {
      console.error("Failed to update part", err);
    }
  };

  const handleCancel = () => {
    router.push(`/community/parts/${id}`);
  };

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
          パート編集
        </Typography>

        {isError && (
          <Alert severity="error" sx={{ mb: 2 }}>
            パートの取得に失敗しました。後でもう一度お試しください。
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
            disabled={updatePartMutation.isPending}
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
            disabled={updatePartMutation.isPending}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={updatePartMutation.isPending}
              startIcon={
                updatePartMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {updatePartMutation.isPending ? "保存中..." : "保存する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={updatePartMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditPartPage;
