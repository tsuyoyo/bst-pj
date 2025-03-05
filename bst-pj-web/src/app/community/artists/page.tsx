"use client";

import { useState } from "react";
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
  ListItemButton,
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useArtists } from "@/features/artists/hooks";

const ArtistsListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useArtists();
  const artists = data?.artists || [];

  const handleAddArtist = () => {
    router.push("/community/artists/new");
  };

  const handleEditArtist = (id: number) => {
    router.push(`/community/artists/${id}/edit`);
  };

  const handleViewArtist = (id: number) => {
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
            アーティスト一覧
          </Typography>
          {user && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleAddArtist}
            >
              新規アーティスト登録
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          アーティストの一覧です。新しいアーティストを登録してコミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            アーティストの取得に失敗しました。後でもう一度お試しください。
          </Alert>
        )}

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : artists.length === 0 ? (
          <Typography>
            アーティストが登録されていません。新しいアーティストを追加してください。
          </Typography>
        ) : (
          <List>
            {artists.map((artist, index) => (
              <Box key={artist.id}>
                {index > 0 && <Divider />}
                <ListItemButton onClick={() => handleViewArtist(artist.id)}>
                  <ListItemText
                    primary={artist.name}
                    secondary={artist.website}
                  />
                  {user && (
                    <Button
                      size="small"
                      startIcon={<EditIcon />}
                      onClick={(e) => {
                        e.stopPropagation();
                        handleEditArtist(artist.id);
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

export default ArtistsListPage;
