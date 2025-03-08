"use client";

import { useState, useEffect } from "react";
import { useParams, useRouter } from "next/navigation";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  Grid,
  TextField,
  CircularProgress,
  Alert,
  IconButton,
} from "@mui/material";
import {
  ArrowBack as ArrowBackIcon,
  Save as SaveIcon,
} from "@mui/icons-material";
import {
  useStudioRooms,
  useUpdateStudioRoom,
} from "@/features/studioRooms/hooks";
import { StudioRoom } from "@/proto/bst/v1/location";
import { UpdateStudioRoomRequest } from "@/proto/bst/v1/studio_room_service";

const EditStudioRoomPage = () => {
  const params = useParams();
  const router = useRouter();
  const studioId = Number(params.id);
  const roomId = Number(params.roomId);

  // ルーム情報を取得
  const { data: roomsData, isLoading, error } = useStudioRooms(studioId);

  // 編集用のフォーム状態
  const [formData, setFormData] = useState<UpdateStudioRoomRequest>({
    name: "",
    capacity: 0,
    size: 0,
    price: 0,
  });

  // ルーム情報が取得できたら、フォームに設定
  useEffect(() => {
    if (roomsData?.rooms) {
      const room = roomsData.rooms.find((r) => r.id === roomId);
      if (room) {
        setFormData({
          name: room.name,
          capacity: room.capacity,
          size: room.size || 0,
          price: room.price,
        });
      }
    }
  }, [roomsData, roomId]);

  // ルーム更新のミューテーション
  const updateRoomMutation = useUpdateStudioRoom(studioId, roomId);

  // 前のページに戻る
  const handleBack = () => {
    router.push(`/studios/${studioId}/rooms/${roomId}`);
  };

  // フォームの入力値を更新
  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: name === "name" ? value : Number(value),
    }));
  };

  // ルーム情報を更新
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      await updateRoomMutation.mutateAsync(formData);
      router.push(`/studios/${studioId}/rooms/${roomId}`);
    } catch (error) {
      console.error("Failed to update room:", error);
    }
  };

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Box
          sx={{
            display: "flex",
            alignItems: "center",
            mb: 3,
          }}
        >
          <IconButton onClick={handleBack} sx={{ mr: 1 }}>
            <ArrowBackIcon />
          </IconButton>
          <Typography variant="h4" component="h1">
            ルーム編集
          </Typography>
        </Box>

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : error ? (
          <Alert severity="error" sx={{ mb: 2 }}>
            ルーム情報の取得に失敗しました。
          </Alert>
        ) : (
          <form onSubmit={handleSubmit}>
            <Grid container spacing={3}>
              <Grid item xs={12}>
                <TextField
                  name="name"
                  label="ルーム名"
                  fullWidth
                  required
                  value={formData.name}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={4}>
                <TextField
                  name="capacity"
                  label="定員（人数）"
                  type="number"
                  fullWidth
                  required
                  value={formData.capacity}
                  onChange={handleChange}
                  InputProps={{ inputProps: { min: 1 } }}
                />
              </Grid>
              <Grid item xs={12} sm={4}>
                <TextField
                  name="size"
                  label="広さ（㎡）"
                  type="number"
                  fullWidth
                  value={formData.size}
                  onChange={handleChange}
                  InputProps={{ inputProps: { min: 0 } }}
                />
              </Grid>
              <Grid item xs={12} sm={4}>
                <TextField
                  name="price"
                  label="料金（円）"
                  type="number"
                  fullWidth
                  required
                  value={formData.price}
                  onChange={handleChange}
                  InputProps={{ inputProps: { min: 0 } }}
                />
              </Grid>
              <Grid
                item
                xs={12}
                sx={{ mt: 2, display: "flex", justifyContent: "flex-end" }}
              >
                <Button
                  type="button"
                  variant="outlined"
                  onClick={handleBack}
                  sx={{ mr: 2 }}
                >
                  キャンセル
                </Button>
                <Button
                  type="submit"
                  variant="contained"
                  startIcon={<SaveIcon />}
                  disabled={
                    updateRoomMutation.isPending ||
                    !formData.name ||
                    formData.capacity <= 0
                  }
                >
                  {updateRoomMutation.isPending ? "保存中..." : "保存"}
                </Button>
              </Grid>
            </Grid>
          </form>
        )}
      </Paper>
    </Container>
  );
};

export default EditStudioRoomPage;
