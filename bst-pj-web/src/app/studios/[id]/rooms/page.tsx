"use client";

import { useState } from "react";
import { useParams, useRouter } from "next/navigation";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  List,
  ListItem,
  ListItemText,
  Divider,
  CircularProgress,
  Alert,
  IconButton,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  Grid,
} from "@mui/material";
import {
  Add as AddIcon,
  Edit as EditIcon,
  Delete as DeleteIcon,
} from "@mui/icons-material";
import {
  useStudioRooms,
  useCreateStudioRoom,
  useDeleteStudioRoom,
} from "@/features/studioRooms/hooks";
import { CreateStudioRoomRequest } from "@/proto/bst/v1/studio_room_service";
import { useStudio } from "@/features/studios/hooks";

const StudioRoomsPage = () => {
  const params = useParams();
  const router = useRouter();
  const studioId = Number(params.id);

  // ルーム一覧を取得
  const { data: roomsData, isLoading, error } = useStudioRooms(studioId);
  const rooms = roomsData?.rooms || [];

  // ルーム作成・削除のミューテーション
  const createRoomMutation = useCreateStudioRoom(studioId);
  const deleteRoomMutation = useDeleteStudioRoom(studioId);

  // 新規ルーム作成用のダイアログ状態
  const [openCreateDialog, setOpenCreateDialog] = useState(false);
  const [newRoom, setNewRoom] = useState<CreateStudioRoomRequest>({
    name: "",
    capacity: 0,
    size: 0,
    price: 0,
  });

  // 削除確認ダイアログ状態
  const [openDeleteDialog, setOpenDeleteDialog] = useState(false);
  const [roomToDelete, setRoomToDelete] = useState<{
    id: number;
    name: string;
  } | null>(null);

  // スタジオ情報を取得
  const {
    data: studioData,
    isLoading: isStudioLoading,
    error: studioError,
  } = useStudio(studioId);
  const studio = studioData?.studio;

  // ルーム詳細ページへ移動
  const handleViewRoom = (roomId: number) => {
    router.push(`/studios/${studioId}/rooms/${roomId}`);
  };

  // ルーム編集ページへ移動
  const handleEditRoom = (roomId: number) => {
    router.push(`/studios/${studioId}/rooms/${roomId}/edit`);
  };

  // 新規ルーム作成ダイアログを開く
  const handleOpenCreateDialog = () => {
    setOpenCreateDialog(true);
  };

  // 新規ルーム作成ダイアログを閉じる
  const handleCloseCreateDialog = () => {
    setOpenCreateDialog(false);
    setNewRoom({ name: "", capacity: 0, size: 0, price: 0 });
  };

  // 新規ルーム作成フォームの入力値を更新
  const handleNewRoomChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setNewRoom((prev) => ({
      ...prev,
      [name]: name === "name" ? value : Number(value),
    }));
  };

  // 新規ルームを作成
  const handleCreateRoom = async () => {
    try {
      await createRoomMutation.mutateAsync(newRoom);
      handleCloseCreateDialog();
    } catch (error) {
      console.error("Failed to create room:", error);
    }
  };

  // 削除確認ダイアログを開く
  const handleOpenDeleteDialog = (room: { id: number; name: string }) => {
    setRoomToDelete(room);
    setOpenDeleteDialog(true);
  };

  // 削除確認ダイアログを閉じる
  const handleCloseDeleteDialog = () => {
    setOpenDeleteDialog(false);
    setRoomToDelete(null);
  };

  // ルームを削除
  const handleDeleteRoom = async () => {
    if (!roomToDelete) return;

    try {
      await deleteRoomMutation.mutateAsync(roomToDelete.id);
      handleCloseDeleteDialog();
    } catch (error) {
      console.error("Failed to delete room:", error);
    }
  };

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Box
          sx={{
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            mb: 3,
          }}
        >
          <Box>
            <Typography variant="h4" component="h1">
              スタジオルーム一覧
            </Typography>
            {studio && (
              <Typography variant="subtitle1" color="text.secondary">
                {studio.name}
              </Typography>
            )}
          </Box>
          <Button
            variant="contained"
            startIcon={<AddIcon />}
            onClick={handleOpenCreateDialog}
          >
            新規ルーム登録
          </Button>
        </Box>

        <Typography variant="body1" paragraph>
          {isStudioLoading
            ? "スタジオ情報を読み込み中..."
            : studio
            ? `「${studio.name}」のルーム一覧です。ルームを追加・編集・削除できます。`
            : `スタジオID: ${studioId} のルーム一覧です。ルームを追加・編集・削除できます。`}
        </Typography>

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : error ? (
          <Alert severity="error" sx={{ mb: 2 }}>
            ルーム情報の取得に失敗しました。
          </Alert>
        ) : rooms.length === 0 ? (
          <Typography>
            ルームが登録されていません。新しいルームを追加してください。
          </Typography>
        ) : (
          <List>
            {rooms.map((room, index) => (
              <Box key={room.id}>
                {index > 0 && <Divider />}
                <ListItem
                  secondaryAction={
                    <Box>
                      <IconButton
                        edge="end"
                        aria-label="edit"
                        onClick={() => handleEditRoom(room.id)}
                      >
                        <EditIcon />
                      </IconButton>
                      <IconButton
                        edge="end"
                        aria-label="delete"
                        onClick={() =>
                          handleOpenDeleteDialog({
                            id: room.id,
                            name: room.name,
                          })
                        }
                        sx={{ ml: 1 }}
                      >
                        <DeleteIcon />
                      </IconButton>
                    </Box>
                  }
                  onClick={() => handleViewRoom(room.id)}
                  sx={{ cursor: "pointer" }}
                >
                  <ListItemText
                    primary={room.name}
                    secondary={
                      <>
                        <Typography variant="body2" component="span">
                          定員: {room.capacity}人
                        </Typography>
                        <Typography
                          variant="body2"
                          component="span"
                          sx={{ ml: 2 }}
                        >
                          料金: {room.price}円
                        </Typography>
                      </>
                    }
                  />
                </ListItem>
              </Box>
            ))}
          </List>
        )}
      </Paper>

      {/* 新規ルーム作成ダイアログ */}
      <Dialog open={openCreateDialog} onClose={handleCloseCreateDialog}>
        <DialogTitle>新規ルーム登録</DialogTitle>
        <DialogContent>
          <Grid container spacing={2} sx={{ mt: 1 }}>
            <Grid item xs={12}>
              <TextField
                name="name"
                label="ルーム名"
                fullWidth
                value={newRoom.name}
                onChange={handleNewRoomChange}
              />
            </Grid>
            <Grid item xs={6}>
              <TextField
                name="capacity"
                label="定員（人数）"
                type="number"
                fullWidth
                value={newRoom.capacity}
                onChange={handleNewRoomChange}
                InputProps={{ inputProps: { min: 1 } }}
              />
            </Grid>
            <Grid item xs={6}>
              <TextField
                name="size"
                label="広さ（㎡）"
                type="number"
                fullWidth
                value={newRoom.size}
                onChange={handleNewRoomChange}
                InputProps={{ inputProps: { min: 0 } }}
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                name="price"
                label="料金（円）"
                type="number"
                fullWidth
                value={newRoom.price}
                onChange={handleNewRoomChange}
                InputProps={{ inputProps: { min: 0 } }}
              />
            </Grid>
          </Grid>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseCreateDialog}>キャンセル</Button>
          <Button
            onClick={handleCreateRoom}
            variant="contained"
            disabled={!newRoom.name || newRoom.capacity <= 0}
          >
            登録
          </Button>
        </DialogActions>
      </Dialog>

      {/* 削除確認ダイアログ */}
      <Dialog open={openDeleteDialog} onClose={handleCloseDeleteDialog}>
        <DialogTitle>ルーム削除の確認</DialogTitle>
        <DialogContent>
          <Typography>
            ルーム「{roomToDelete?.name}」を削除してもよろしいですか？
          </Typography>
          <Typography variant="body2" color="error" sx={{ mt: 2 }}>
            この操作は元に戻せません。
          </Typography>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseDeleteDialog}>キャンセル</Button>
          <Button onClick={handleDeleteRoom} color="error">
            削除
          </Button>
        </DialogActions>
      </Dialog>
    </Container>
  );
};

export default StudioRoomsPage;
