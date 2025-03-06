"use client";

import { useState, useEffect } from "react";
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
import { useCreateSong } from "@/features/songs/hooks";
import { useArtists } from "@/features/artists/hooks";

const NewSongPage = () => {
  const router = useRouter();
  const [title, setTitle] = useState("");
  const [artistId, setArtistId] = useState<number | "">("");
  const [error, setError] = useState<string | null>(null);
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const createSongMutation = useCreateSong();
  const { data: artistsData, isLoading: isArtistsLoading } = useArtists();

  const artists = artistsData?.artists || [];

  // ログインチェック
  useEffect(() => {
    if (!user) {
      router.push("/login?redirect=/community/songs/new");
    }
  }, [user, router]);

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
      await createSongMutation.mutateAsync({
        title,
        artistId: Number(artistId),
      });
      router.push("/community/songs");
    } catch (err) {
      console.error("Failed to create song", err);
      setError("曲の登録に失敗しました。後でもう一度お試しください。");
    }
  };

  const handleCancel = () => {
    router.push("/community/songs");
  };

  const handleArtistChange = (event: SelectChangeEvent<number | "">) => {
    setArtistId(event.target.value as number);
  };

  if (!user) {
    return (
      <Container className="page-container">
        <Alert severity="info">ログインが必要です。リダイレクトします...</Alert>
      </Container>
    );
  }

  if (isArtistsLoading) {
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
          新規曲登録
        </Typography>
        <Typography variant="body1" paragraph>
          新しい曲を登録して、コミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
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
            disabled={createSongMutation.isPending}
          />

          <FormControl fullWidth margin="normal" required>
            <InputLabel id="artist-select-label">アーティスト</InputLabel>
            <Select
              labelId="artist-select-label"
              id="artist-select"
              value={artistId}
              label="アーティスト"
              onChange={handleArtistChange}
              disabled={createSongMutation.isPending}
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
              disabled={createSongMutation.isPending}
              startIcon={
                createSongMutation.isPending ? (
                  <CircularProgress size={20} />
                ) : null
              }
            >
              {createSongMutation.isPending ? "登録中..." : "登録する"}
            </Button>
            <Button
              variant="outlined"
              onClick={handleCancel}
              disabled={createSongMutation.isPending}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewSongPage;
