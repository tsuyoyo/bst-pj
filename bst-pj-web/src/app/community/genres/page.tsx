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
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useGenres } from "@/features/genres/hooks";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const GenresListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);
  const { data, isLoading, error } = useGenres();
  const genres = data?.genres || [];

  const handleAddGenre = () => {
    router.push("/community/genres/new");
  };

  const handleEditGenre = (id: number) => {
    router.push(`/community/genres/${id}/edit`);
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
            ジャンル一覧
          </Typography>
          {user && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleAddGenre}
            >
              新規ジャンル登録
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          音楽ジャンルの一覧です。新しいジャンルを登録してコミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            ジャンルの取得に失敗しました。後でもう一度お試しください。
          </Alert>
        )}

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : genres.length === 0 ? (
          <Typography>
            ジャンルが登録されていません。新しいジャンルを追加してください。
          </Typography>
        ) : (
          <List>
            {genres.map((genre, index) => (
              <Box key={genre.id}>
                {index > 0 && <Divider />}
                <ListItem>
                  <ListItemText primary={genre.name} />
                  {user && (
                    <Button
                      size="small"
                      startIcon={<EditIcon />}
                      onClick={() => handleEditGenre(genre.id)}
                    >
                      編集
                    </Button>
                  )}
                </ListItem>
              </Box>
            ))}
          </List>
        )}
      </Paper>
    </Container>
  );
};

export default GenresListPage;
