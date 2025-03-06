"use client";

import { useState, useEffect, useRef, Usable } from "react";
import React from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  TextField,
  Button,
  Alert,
  CircularProgress,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  SelectChangeEvent,
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useSong, useUpdateSong } from "@/features/songs/hooks";
import { useArtists } from "@/features/artists/hooks";

const EditSongPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);

  const router = useRouter();
  const [title, setTitle] = useState("");
  const [artistId, setArtistId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const {
    data: songData,
    isLoading: isSongLoading,
    isError: isSongError,
  } = useSong(id);
  const { data: artistsData, isLoading: isArtistsLoading } = useArtists();
  const updateSongMutation = useUpdateSong(id);

  const artists = artistsData?.artists || [];

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/songs/${id}/edit`);
    }
  }, [user, router, id]);

  // 曲データのロード
  useEffect(() => {
    if (songData?.song) {
      setTitle(songData.song.title);
      setArtistId(songData.song.artist?.id || "");
    }
  }, [songData]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (!title.trim()) {
      setError("曲名を入力してください。");
      return;
    }

    if (!artistId) {
      setError("アーティストを選択してください。");
      return;
    }

    try {
      await updateSongMutation.mutateAsync({
        title,
        artistId: Number(artistId),
      });
      router.push(`/community/songs/${id}`);
    } catch (err) {
      console.error("Failed to update song", err);
      setError("曲の更新に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push(`/community/songs/${id}`);
  };

  const handleArtistChange = (event: SelectChangeEvent<number | "">) => {
    setArtistId(event.target.value as number);
  };

  if (isSongLoading || isArtistsLoading) {
    return (
      <Container className="page-container">
        <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
          <CircularProgress />
        </Box>
      </Container>
    );
  }

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          曲編集
        </Typography>

        {(error || isSongError) && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error || "曲の取得に失敗しました。後でもう一度お試しください。"}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="曲名"
            fullWidth
            margin="normal"
            required
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            disabled={updateSongMutation.isPending}
          />

          <FormControl fullWidth margin="normal" required>
            <InputLabel id="artist-select-label">アーティスト</InputLabel>
            <Select
              labelId="artist-select-label"
              id="artist-select"
              value={artistId}
              label="アーティスト"
              onChange={handleArtistChange}
              disabled={updateSongMutation.isPending}
            >
              {artists.map((artist) => (
                <MenuItem key={artist.id} value={artist.id}>
                  {artist.name}
                </MenuItem>
              ))}
            </Select>
          </FormControl>

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={updateSongMutation.isPending}
              startIcon={
                updateSongMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {updateSongMutation.isPending ? "保存中..." : "保存する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={updateSongMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditSongPage;
