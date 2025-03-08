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
  const [address, setAddress] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
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
      if (studioData.studio.location) {
        setAddress(studioData.studio.location.address || "");
        setPhone(studioData.studio.location.phone || "");
        setEmail(studioData.studio.location.email || "");
      }
    }
  }, [studioData]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (!name.trim()) {
      setError("スタジオ名を入力してください。");
      return;
    }

    if (!address.trim()) {
      setError("住所を入力してください。");
      return;
    }

    try {
      await updateStudioMutation.mutateAsync({
        name,
        description,
        location: {
          address,
          phone,
          email,
        },
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

  if (isStudioLoading) {
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
          スタジオ編集
        </Typography>

        {(error || isStudioError) && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error ||
              "スタジオの取得に失敗しました。後でもう一度お試しください。"}
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

          <Typography variant="h6" sx={{ mt: 3, mb: 1 }}>
            所在地情報
          </Typography>

          <TextField
            label="住所"
            fullWidth
            margin="normal"
            required
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            disabled={updateStudioMutation.isPending}
          />

          <Grid container spacing={2}>
            <Grid item xs={12} sm={6}>
              <TextField
                label="電話番号"
                fullWidth
                margin="normal"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                disabled={updateStudioMutation.isPending}
              />
            </Grid>
            <Grid item xs={12} sm={6}>
              <TextField
                label="メールアドレス"
                fullWidth
                margin="normal"
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                disabled={updateStudioMutation.isPending}
              />
            </Grid>
          </Grid>

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
