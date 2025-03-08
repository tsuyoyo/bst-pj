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
  Card,
  CardContent,
  Divider,
  CircularProgress,
  Alert,
  IconButton,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  SelectChangeEvent,
  Chip,
  List,
  ListItem,
  ListItemText,
  ListItemSecondaryAction,
} from "@mui/material";
import {
  Add as AddIcon,
  Edit as EditIcon,
  Delete as DeleteIcon,
  ArrowBack as ArrowBackIcon,
} from "@mui/icons-material";
import {
  useStudioRooms,
  useStudioRoomInfos,
  useCreateStudioRoomInfo,
  useUpdateStudioRoomInfo,
  useDeleteStudioRoomInfo,
} from "@/features/studioRooms/hooks";
import { StudioRoom, StudioRoomInfo } from "@/proto/bst/v1/location";
import {
  CreateStudioRoomInfoRequest,
  UpdateStudioRoomInfoRequest,
} from "@/proto/bst/v1/studio_room_service";

// 追加情報のタイプ選択肢
const INFO_TYPES = [
  { value: "equipment", label: "設備" },
  { value: "amenity", label: "アメニティ" },
  { value: "rule", label: "利用規則" },
  { value: "other", label: "その他" },
];

const StudioRoomDetailPage = () => {
  const params = useParams();
  const router = useRouter();
  const studioId = Number(params.id);
  const roomId = Number(params.roomId);

  // ルーム情報を取得
  const {
    data: roomsData,
    isLoading: isRoomsLoading,
    error: roomsError,
  } = useStudioRooms(studioId);

  // 現在のルーム情報
  const [currentRoom, setCurrentRoom] = useState<
    (StudioRoom & { size?: number }) | null
  >(null);

  // ルーム情報が取得できたら、現在のルームを設定
  useEffect(() => {
    if (roomsData?.rooms) {
      const room = roomsData.rooms.find((r) => r.id === roomId);
      if (room) {
        setCurrentRoom(room);
      }
    }
  }, [roomsData, roomId]);

  // ルーム追加情報を取得
  const {
    data: roomInfosData,
    isLoading: isInfosLoading,
    error: infosError,
  } = useStudioRoomInfos(studioId, roomId);
  const roomInfos = roomInfosData?.infos || [];

  // 追加情報の作成・更新・削除のミューテーション
  const createInfoMutation = useCreateStudioRoomInfo(studioId, roomId);
  const updateInfoMutation = useUpdateStudioRoomInfo(studioId, roomId);
  const deleteInfoMutation = useDeleteStudioRoomInfo(studioId, roomId);

  // 追加情報作成用のダイアログ状態
  const [openCreateDialog, setOpenCreateDialog] = useState(false);
  const [newInfo, setNewInfo] = useState<CreateStudioRoomInfoRequest>({
    type: "",
    key: "",
    value: "",
  });

  // 追加情報編集用のダイアログ状態
  const [openEditDialog, setOpenEditDialog] = useState(false);
  const [editingInfo, setEditingInfo] = useState<{
    id: number;
    request: UpdateStudioRoomInfoRequest;
  } | null>(null);

  // 削除確認ダイアログ状態
  const [openDeleteDialog, setOpenDeleteDialog] = useState(false);
  const [infoToDelete, setInfoToDelete] = useState<{
    id: number;
    key: string;
  } | null>(null);

  // 前のページに戻る
  const handleBack = () => {
    router.push(`/studios/${studioId}`);
  };

  // ルーム編集ページへ移動
  const handleEditRoom = () => {
    router.push(`/studios/${studioId}/rooms/${roomId}/edit`);
  };

  // 追加情報作成ダイアログを開く
  const handleOpenCreateDialog = () => {
    setOpenCreateDialog(true);
  };

  // 追加情報作成ダイアログを閉じる
  const handleCloseCreateDialog = () => {
    setOpenCreateDialog(false);
    setNewInfo({ type: "", key: "", value: "" });
  };

  // 追加情報作成フォームの入力値を更新
  const handleNewInfoChange = (
    e:
      | React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
      | SelectChangeEvent
  ) => {
    const { name, value } = e.target;
    setNewInfo((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  // 追加情報を作成
  const handleCreateInfo = async () => {
    try {
      await createInfoMutation.mutateAsync(newInfo);
      handleCloseCreateDialog();
    } catch (error) {
      console.error("Failed to create room info:", error);
    }
  };

  // 追加情報編集ダイアログを開く
  const handleOpenEditDialog = (info: StudioRoomInfo) => {
    setEditingInfo({
      id: info.id,
      request: {
        type: info.type,
        key: info.key,
        value: info.value,
      },
    });
    setOpenEditDialog(true);
  };

  // 追加情報編集ダイアログを閉じる
  const handleCloseEditDialog = () => {
    setOpenEditDialog(false);
    setEditingInfo(null);
  };

  // 追加情報編集フォームの入力値を更新
  const handleEditInfoChange = (
    e:
      | React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
      | SelectChangeEvent
  ) => {
    const { name, value } = e.target;
    if (editingInfo) {
      setEditingInfo({
        ...editingInfo,
        request: {
          ...editingInfo.request,
          [name]: value,
        },
      });
    }
  };

  // 追加情報を更新
  const handleUpdateInfo = async () => {
    if (!editingInfo) return;

    try {
      await updateInfoMutation.mutateAsync({
        infoId: editingInfo.id,
        request: editingInfo.request,
      });
      handleCloseEditDialog();
    } catch (error) {
      console.error("Failed to update room info:", error);
    }
  };

  // 削除確認ダイアログを開く
  const handleOpenDeleteDialog = (info: { id: number; key: string }) => {
    setInfoToDelete(info);
    setOpenDeleteDialog(true);
  };

  // 削除確認ダイアログを閉じる
  const handleCloseDeleteDialog = () => {
    setOpenDeleteDialog(false);
    setInfoToDelete(null);
  };

  // 追加情報を削除
  const handleDeleteInfo = async () => {
    if (!infoToDelete) return;

    try {
      await deleteInfoMutation.mutateAsync(infoToDelete.id);
      handleCloseDeleteDialog();
    } catch (error) {
      console.error("Failed to delete room info:", error);
    }
  };

  // 追加情報のタイプに応じたラベルを取得
  const getTypeLabel = (type: string): string => {
    const typeObj = INFO_TYPES.find((t) => t.value === type);
    return typeObj ? typeObj.label : type;
  };

  // 追加情報のタイプに応じた色を取得
  const getTypeColor = (
    type: string
  ):
    | "default"
    | "primary"
    | "secondary"
    | "error"
    | "info"
    | "success"
    | "warning" => {
    switch (type) {
      case "equipment":
        return "primary";
      case "amenity":
        return "success";
      case "rule":
        return "warning";
      default:
        return "default";
    }
  };

  const isLoading = isRoomsLoading || isInfosLoading;
  const error = roomsError || infosError;

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
            ルーム詳細
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
        ) : !currentRoom ? (
          <Alert severity="error" sx={{ mb: 2 }}>
            指定されたルームが見つかりません。
          </Alert>
        ) : (
          <>
            <Grid container spacing={3}>
              <Grid item xs={12}>
                <Card>
                  <CardContent>
                    <Box
                      sx={{
                        display: "flex",
                        justifyContent: "space-between",
                        alignItems: "center",
                        mb: 2,
                      }}
                    >
                      <Typography variant="h5" component="h2">
                        {currentRoom.name}
                      </Typography>
                      <Button
                        variant="outlined"
                        startIcon={<EditIcon />}
                        onClick={handleEditRoom}
                      >
                        編集
                      </Button>
                    </Box>
                    <Divider sx={{ mb: 2 }} />
                    <Grid container spacing={2}>
                      <Grid item xs={12} sm={4}>
                        <Typography variant="subtitle1">定員</Typography>
                        <Typography variant="body1">
                          {currentRoom.capacity}人
                        </Typography>
                      </Grid>
                      <Grid item xs={12} sm={4}>
                        <Typography variant="subtitle1">広さ</Typography>
                        <Typography variant="body1">
                          {currentRoom?.size || 0}㎡
                        </Typography>
                      </Grid>
                      <Grid item xs={12} sm={4}>
                        <Typography variant="subtitle1">料金</Typography>
                        <Typography variant="body1">
                          {currentRoom.price}円
                        </Typography>
                      </Grid>
                    </Grid>
                  </CardContent>
                </Card>
              </Grid>

              <Grid item xs={12}>
                <Box
                  sx={{
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    mb: 2,
                  }}
                >
                  <Typography variant="h6">追加情報</Typography>
                  <Button
                    variant="contained"
                    startIcon={<AddIcon />}
                    onClick={handleOpenCreateDialog}
                  >
                    追加情報を登録
                  </Button>
                </Box>

                {roomInfos.length === 0 ? (
                  <Typography>追加情報が登録されていません。</Typography>
                ) : (
                  <List>
                    {roomInfos.map((info) => (
                      <Card key={info.id} sx={{ mb: 2 }}>
                        <CardContent>
                          <Box
                            sx={{
                              display: "flex",
                              justifyContent: "space-between",
                              alignItems: "flex-start",
                            }}
                          >
                            <Box>
                              <Chip
                                label={getTypeLabel(info.type)}
                                color={getTypeColor(info.type)}
                                size="small"
                                sx={{ mb: 1 }}
                              />
                              <Typography variant="subtitle1">
                                {info.key}
                              </Typography>
                              <Typography variant="body2">
                                {info.value}
                              </Typography>
                            </Box>
                            <Box>
                              <IconButton
                                size="small"
                                onClick={() => handleOpenEditDialog(info)}
                              >
                                <EditIcon fontSize="small" />
                              </IconButton>
                              <IconButton
                                size="small"
                                onClick={() =>
                                  handleOpenDeleteDialog({
                                    id: info.id,
                                    key: info.key,
                                  })
                                }
                              >
                                <DeleteIcon fontSize="small" />
                              </IconButton>
                            </Box>
                          </Box>
                        </CardContent>
                      </Card>
                    ))}
                  </List>
                )}
              </Grid>
            </Grid>
          </>
        )}
      </Paper>

      {/* 追加情報作成ダイアログ */}
      <Dialog open={openCreateDialog} onClose={handleCloseCreateDialog}>
        <DialogTitle>追加情報の登録</DialogTitle>
        <DialogContent>
          <Grid container spacing={2} sx={{ mt: 1 }}>
            <Grid item xs={12}>
              <FormControl fullWidth>
                <InputLabel id="info-type-label">情報タイプ</InputLabel>
                <Select
                  labelId="info-type-label"
                  name="type"
                  value={newInfo.type}
                  label="情報タイプ"
                  onChange={handleNewInfoChange}
                >
                  {INFO_TYPES.map((type) => (
                    <MenuItem key={type.value} value={type.value}>
                      {type.label}
                    </MenuItem>
                  ))}
                </Select>
              </FormControl>
            </Grid>
            <Grid item xs={12}>
              <TextField
                name="key"
                label="項目名"
                fullWidth
                value={newInfo.key}
                onChange={handleNewInfoChange}
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                name="value"
                label="内容"
                fullWidth
                multiline
                rows={3}
                value={newInfo.value}
                onChange={handleNewInfoChange}
              />
            </Grid>
          </Grid>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseCreateDialog}>キャンセル</Button>
          <Button
            onClick={handleCreateInfo}
            variant="contained"
            disabled={
              !newInfo.type ||
              !newInfo.key ||
              !newInfo.value ||
              createInfoMutation.isPending
            }
          >
            {createInfoMutation.isPending ? "登録中..." : "登録"}
          </Button>
        </DialogActions>
      </Dialog>

      {/* 追加情報編集ダイアログ */}
      <Dialog open={openEditDialog} onClose={handleCloseEditDialog}>
        <DialogTitle>追加情報の編集</DialogTitle>
        <DialogContent>
          {editingInfo && (
            <Grid container spacing={2} sx={{ mt: 1 }}>
              <Grid item xs={12}>
                <FormControl fullWidth>
                  <InputLabel id="edit-info-type-label">情報タイプ</InputLabel>
                  <Select
                    labelId="edit-info-type-label"
                    name="type"
                    value={editingInfo.request.type}
                    label="情報タイプ"
                    onChange={handleEditInfoChange}
                  >
                    {INFO_TYPES.map((type) => (
                      <MenuItem key={type.value} value={type.value}>
                        {type.label}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Grid>
              <Grid item xs={12}>
                <TextField
                  name="key"
                  label="項目名"
                  fullWidth
                  value={editingInfo.request.key}
                  onChange={handleEditInfoChange}
                />
              </Grid>
              <Grid item xs={12}>
                <TextField
                  name="value"
                  label="内容"
                  fullWidth
                  multiline
                  rows={3}
                  value={editingInfo.request.value}
                  onChange={handleEditInfoChange}
                />
              </Grid>
            </Grid>
          )}
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseEditDialog}>キャンセル</Button>
          <Button
            onClick={handleUpdateInfo}
            variant="contained"
            disabled={
              !editingInfo ||
              !editingInfo.request.type ||
              !editingInfo.request.key ||
              !editingInfo.request.value ||
              updateInfoMutation.isPending
            }
          >
            {updateInfoMutation.isPending ? "更新中..." : "更新"}
          </Button>
        </DialogActions>
      </Dialog>

      {/* 削除確認ダイアログ */}
      <Dialog open={openDeleteDialog} onClose={handleCloseDeleteDialog}>
        <DialogTitle>追加情報削除の確認</DialogTitle>
        <DialogContent>
          <Typography>
            追加情報「{infoToDelete?.key}」を削除してもよろしいですか？
          </Typography>
          <Typography variant="body2" color="error" sx={{ mt: 2 }}>
            この操作は元に戻せません。
          </Typography>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseDeleteDialog}>キャンセル</Button>
          <Button
            onClick={handleDeleteInfo}
            color="error"
            disabled={deleteInfoMutation.isPending}
          >
            {deleteInfoMutation.isPending ? "削除中..." : "削除"}
          </Button>
        </DialogActions>
      </Dialog>
    </Container>
  );
};

export default StudioRoomDetailPage;
