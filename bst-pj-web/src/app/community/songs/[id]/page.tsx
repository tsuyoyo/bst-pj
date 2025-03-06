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
} from "@mui/material";
import { Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import React from "react";
import { useSong } from "@/features/songs/hooks";

const SongDetailPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useSong(id);
  const song = data?.song || null;

  const handleEdit = () => {
    router.push(`/community/songs/${id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/songs");
  };

  const handleViewArtist = () => {
    if (song?.artist?.id) {
      router.push(`/community/artists/${song.artist.id}`);
    }
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

  if (error || !song) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {error ? "曲の取得に失敗しました。" : "曲が見つかりませんでした。"}
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
            {song.title}
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

        <Typography variant="h6" gutterBottom>
          アーティスト
        </Typography>
        <Chip
          label={song.artist?.name || "不明なアーティスト"}
          onClick={song.artist ? handleViewArtist : undefined}
          clickable={!!song.artist}
          sx={{ mb: 2 }}
        />

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default SongDetailPage;
