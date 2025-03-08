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
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useCreateStudio } from "@/features/studios/hooks";

const NewStudioPage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [address, setAddress] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
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

    if (!address.trim()) {
      setError("住所を入力してください。");
      return;
    }

    try {
      await createStudioMutation.mutateAsync({
        name,
        description,
        location: {
          address,
          phone,
          email,
        },
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
            disabled={createStudioMutation.isPending}
          />

          <Grid container spacing={2}>
            <Grid item xs={12} sm={6}>
              <TextField
                label="電話番号"
                fullWidth
                margin="normal"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                disabled={createStudioMutation.isPending}
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
                disabled={createStudioMutation.isPending}
              />
            </Grid>
          </Grid>

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
