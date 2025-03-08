"use client";

import { useState, useEffect, useRef, Usable } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  CircularProgress,
  Alert,
  Chip,
  List,
  ListItem,
  ListItemText,
  Divider,
  Card,
  CardContent,
  Grid,
  Link,
} from "@mui/material";
import {
  Edit as EditIcon,
  Add as AddIcon,
  LocationOn,
  Phone,
  Email,
  Info,
} from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import React from "react";
import { useStudio } from "@/features/studios/hooks";
import { useStudioRooms } from "@/features/studioRooms/hooks";
import { useAreas } from "@/features/areas/hooks";

const StudioDetailPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const {
    data: studioData,
    isLoading: isStudioLoading,
    error: studioError,
  } = useStudio(id);
  const {
    data: roomsData,
    isLoading: isRoomsLoading,
    error: roomsError,
  } = useStudioRooms(id);

  const studio = studioData?.studio || null;
  const rooms = roomsData?.rooms || [];

  // エリア情報を取得
  const { data: areasData, isLoading: isAreasLoading } = useAreas();
  const areas = areasData?.areas || [];

  const handleEdit = () => {
    router.push(`/studios/${id}/edit`);
  };

  const handleAddRoom = () => {
    router.push(`/studios/${id}/rooms/new`);
  };

  const handleEditRoom = (roomId: number) => {
    router.push(`/studios/${id}/rooms/${roomId}/edit`);
  };

  const handleBack = () => {
    router.push("/studios");
  };

  // エリア名を取得する関数
  const getAreaName = (prefectureId: number): string => {
    if (isAreasLoading) return "読み込み中...";
    const area = areas.find((area) => area.prefectureId === prefectureId);
    return area ? area.name : `都道府県ID: ${prefectureId}`;
  };

  if (isStudioLoading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress size={40} />
        </Box>
      </Container>
    );
  }

  if (studioError || !studio) {
    return (
      <Container className="page-container">
        <Alert severity="error" sx={{ mb: 2 }}>
          スタジオ情報の取得に失敗しました。
        </Alert>
        <Button onClick={handleBack}>一覧に戻る</Button>
      </Container>
    );
  }

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
          <Typography variant="h4" component="h1">
            {studio.name}
          </Typography>
          {user && (
            <Button
              variant="outlined"
              startIcon={<EditIcon />}
              onClick={handleEdit}
            >
              編集
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          {studio.description}
        </Typography>

        <Card sx={{ mb: 3 }}>
          <CardContent>
            <Typography variant="h6" gutterBottom>
              スタジオ情報
            </Typography>
            <Grid container spacing={2}>
              <Grid item xs={12}>
                <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
                  <LocationOn sx={{ mr: 1 }} />
                  <Typography variant="body1">
                    エリア: {studio.area.name}
                  </Typography>
                </Box>
              </Grid>
              {studio.googleMapsUrl && (
                <Grid item xs={12}>
                  <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
                    <LocationOn sx={{ mr: 1 }} />
                    <Link
                      href={studio.googleMapsUrl}
                      target="_blank"
                      rel="noopener noreferrer"
                    >
                      Google Mapsで見る
                    </Link>
                  </Box>
                </Grid>
              )}
              {studio.additionalInfo && (
                <Grid item xs={12}>
                  <Box
                    sx={{ display: "flex", alignItems: "flex-start", mb: 1 }}
                  >
                    <Info sx={{ mr: 1, mt: 0.5 }} />
                    <Typography variant="body1">
                      {studio.additionalInfo}
                    </Typography>
                  </Box>
                </Grid>
              )}
            </Grid>
          </CardContent>
        </Card>

        <Box
          sx={{
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            mt: 4,
            mb: 2,
          }}
        >
          <Typography variant="h5" component="h2">
            スタジオルーム
          </Typography>
          {user && (
            <Button
              variant="outlined"
              startIcon={<AddIcon />}
              onClick={handleAddRoom}
            >
              ルーム追加
            </Button>
          )}
        </Box>

        {isRoomsLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 2 }}>
            <CircularProgress size={30} />
          </Box>
        ) : roomsError ? (
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
              <React.Fragment key={room.id}>
                {index > 0 && <Divider />}
                <ListItem
                  secondaryAction={
                    user && (
                      <Button
                        size="small"
                        startIcon={<EditIcon />}
                        onClick={() => handleEditRoom(room.id)}
                      >
                        編集
                      </Button>
                    )
                  }
                >
                  <ListItemText
                    primary={<Typography variant="h6">{room.name}</Typography>}
                    secondary={
                      <Box sx={{ mt: 1 }}>
                        <Typography variant="body2">
                          収容人数: {room.capacity}人
                        </Typography>
                        <Typography variant="body2">
                          広さ: {room.capacity}㎡
                        </Typography>
                        <Typography variant="body2">
                          料金: {room.price}円/時間
                        </Typography>
                      </Box>
                    }
                  />
                </ListItem>
              </React.Fragment>
            ))}
          </List>
        )}

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default StudioDetailPage;
