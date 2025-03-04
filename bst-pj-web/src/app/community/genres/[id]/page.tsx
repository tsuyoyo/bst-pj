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
} from "@mui/material";
import { Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import React from "react";
import { useGenre } from "@/features/genres/hooks";

const GenreDetailPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useGenre(id);
  const genre = data?.genre || null;

  const handleEdit = () => {
    router.push(`/community/genres/${id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/genres");
  };

  if (isLoading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress />
        </Box>
      </Container>
    );
  }

  if (error || !genre) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {error
            ? "ジャンルの取得に失敗しました。"
            : "ジャンルが見つかりませんでした。"}
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

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default GenreDetailPage;
