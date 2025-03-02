"use client";

import { useState, useEffect, useRef } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  CircularProgress,
  Alert,
} from "@mui/material";
import { Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { GetGenreResponse } from "@/proto/bst/v1/genre_service";
import { Genre } from "@/proto/bst/v1/content";
import { useApi } from "@/hooks/useApi";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const GenreDetailPage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [genre, setGenre] = useState<Genre | null>(null);
  const api = useApi<GetGenreResponse>();
  const isMounted = useRef(true);
  const { user } = useSelector((state: RootState) => state.auth);

  // Execute once on mount
  useEffect(() => {
    // Check if component is mounted
    isMounted.current = true;

    const fetchGenre = async () => {
      const response = await api.execute("get", `/genres/${params.id}`);
      // Prevent state updates after unmount
      if (isMounted.current && response) {
        setGenre(response.genre || null);
      }
    };

    fetchGenre();

    // Cleanup function
    return () => {
      isMounted.current = false;
    };
  }, [params.id]); // Remove api.execute from dependency array

  const handleEdit = () => {
    router.push(`/community/genres/${params.id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/genres");
  };

  if (api.loading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress />
        </Box>
      </Container>
    );
  }

  if (api.error || !genre) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {api.error || "ジャンルが見つかりませんでした。"}
        </Alert>
        <Button sx={{ mt: 2 }} onClick={handleBack}>
          一覧に戻る
        </Button>
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
            {genre.name}
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

        {genre.description && (
          <>
            <Typography variant="h6" gutterBottom>
              説明
            </Typography>
            <Typography variant="body1" paragraph>
              {genre.description}
            </Typography>
          </>
        )}

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default GenreDetailPage;
