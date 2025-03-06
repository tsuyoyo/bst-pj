"use client";

import { useState } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  List,
  ListItemText,
  Divider,
  CircularProgress,
  Alert,
  ListItemButton,
  Chip,
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useSongs } from "@/features/songs/hooks";

const SongsListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useSongs();
  const songs = data?.songs || [];

  const handleAddSong = () => {
    router.push("/community/songs/new");
  };

  const handleEditSong = (id: number) => {
    router.push(`/community/songs/${id}/edit`);
  };

  const handleViewSong = (id: number) => {
    router.push(`/community/songs/${id}`);
  };

  const handleViewArtist = (id: number, e: React.MouseEvent) => {
    e.stopPropagation();
    router.push(`/community/artists/${id}`);
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
          <Typography variant="h4" component="h1">
            曲一覧
          </Typography>
          {user && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleAddSong}
            >
              新規曲登録
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          曲の一覧です。新しい曲を登録してコミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            曲の取得に失敗しました。後でもう一度お試しください。
          </Alert>
        )}

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : songs.length === 0 ? (
          <Typography>
            曲が登録されていません。新しい曲を追加してください。
          </Typography>
        ) : (
          <List>
            {songs.map((song, index) => (
              <Box key={song.id}>
                {index > 0 && <Divider />}
                <ListItemButton onClick={() => handleViewSong(song.id)}>
                  <ListItemText
                    primary={song.title}
                    secondary={
                      <Chip
                        label={song.artist?.name || "不明なアーティスト"}
                        size="small"
                        onClick={(e) =>
                          song.artist && handleViewArtist(song.artist.id, e)
                        }
                        clickable
                        sx={{ mt: 0.5 }}
                      />
                    }
                  />
                  {user && (
                    <Button
                      size="small"
                      startIcon={<EditIcon />}
                      onClick={(e) => {
                        e.stopPropagation();
                        handleEditSong(song.id);
                      }}
                    >
                      編集
                    </Button>
                  )}
                </ListItemButton>
              </Box>
            ))}
          </List>
        )}
      </Paper>
    </Container>
  );
};

export default SongsListPage;
