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
  InputAdornment,
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useStudio } from "@/features/studios/hooks";
import { useCreateStudioRoom } from "@/features/studioRooms/hooks";

const NewStudioRoomPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);

  const router = useRouter();
  const [name, setName] = useState("");
  const [capacity, setCapacity] = useState<number | "">("");
  const [price, setPrice] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data: studioData, isLoading: isStudioLoading } = useStudio(id);
  const createRoomMutation = useCreateStudioRoom(id);

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/studios/${id}/rooms/new`);
    }
  }, [user, router, id]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (!name.trim()) {
      setError("ルーム名を入力してください。");
      return;
    }

    if (!capacity) {
      setError("収容人数を入力してください。");
      return;
    }

    if (!price) {
      setError("料金を入力してください。");
      return;
    }

    try {
      await createRoomMutation.mutateAsync({
        name,
        capacity: Number(capacity),
        price: Number(price),
      });
      router.push(`/community/studios/${id}`);
    } catch (err) {
      console.error("Failed to create studio room", err);
      setError("ルームの登録に失敗しました。後でもう一度お試しください。");
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

  const studio = studioData?.studio;

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          新規ルーム登録
        </Typography>
        <Typography variant="body1" paragraph>
          {studio?.name || "スタジオ"}に新しいルームを登録します。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="ルーム名"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={createRoomMutation.isPending}
          />

          <TextField
            label="収容人数"
            fullWidth
            margin="normal"
            required
            type="number"
            InputProps={{
              endAdornment: <InputAdornment position="end">人</InputAdornment>,
            }}
            value={capacity}
            onChange={(e) => {
              const val = e.target.value;
              setCapacity(val === "" ? "" : Number(val));
            }}
            disabled={createRoomMutation.isPending}
          />

          <TextField
            label="料金"
            fullWidth
            margin="normal"
            required
            type="number"
            InputProps={{
              endAdornment: (
                <InputAdornment position="end">円/時間</InputAdornment>
              ),
            }}
            value={price}
            onChange={(e) => {
              const val = e.target.value;
              setPrice(val === "" ? "" : Number(val));
            }}
            disabled={createRoomMutation.isPending}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={createRoomMutation.isPending}
            >
              キャンセル
            </Button>
            <Button
              type="submit"
              variant="contained"
              disabled={createRoomMutation.isPending}
              startIcon={
                createRoomMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {createRoomMutation.isPending ? "登録中..." : "登録する"}
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewStudioRoomPage;
