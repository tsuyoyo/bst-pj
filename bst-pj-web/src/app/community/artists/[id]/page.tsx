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
  Link,
} from "@mui/material";
import { Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import React from "react";
import { useArtist } from "@/features/artists/hooks";

const ArtistDetailPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useArtist(id);
  const artist = data?.artist || null;

  const handleEdit = () => {
    router.push(`/community/artists/${id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/artists");
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

  if (error || !artist) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {error
            ? "アーティストの取得に失敗しました。"
            : "アーティストが見つかりませんでした。"}
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
            {artist.name}
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

        {artist.website && (
          <>
            <Typography variant="h6" gutterBottom>
              ウェブサイト
            </Typography>
            <Link
              href={artist.website}
              target="_blank"
              rel="noopener noreferrer"
              sx={{ display: "block", mb: 2 }}
            >
              {artist.website}
            </Link>
          </>
        )}

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default ArtistDetailPage;
