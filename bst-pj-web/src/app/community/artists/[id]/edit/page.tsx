"use client";

import { useState, useEffect, useRef } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  TextField,
  Button,
  Alert,
  CircularProgress,
  FormHelperText,
} from "@mui/material";
import { useRouter } from "next/navigation";
import { UpdateArtistResponse } from "@/proto/bst/v1/artist_service";
import { useApi } from "@/hooks/useApi";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { Artist } from "@/proto/bst/v1/content";
import React from "react";

const EditArtistPage = ({ params }: { params: { id: string } }) => {
  const { id } = params;

  const router = useRouter();
  const [name, setName] = useState("");
  const [website, setWebsite] = useState("");
  const [websiteError, setWebsiteError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const isMounted = useRef(true);
  const { user } = useSelector((state: RootState) => state.auth);

  const api = useApi<UpdateArtistResponse>();
  const artistsApi = useApi<{ artists: Artist[] }>();

  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/artists/${id}/edit`);
    }
  }, [user, router, id]);

  useEffect(() => {
    isMounted.current = true;
    fetchArtist();

    return () => {
      isMounted.current = false;
    };
  }, [id]);

  // URLバリデーション関数
  const validateUrl = (url: string): boolean => {
    if (!url) return true; // 空のURLは許可

    try {
      new URL(url);
      return true;
    } catch (e) {
      return false;
    }
  };

  // URLの変更時にバリデーション
  const handleWebsiteChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    setWebsite(value);

    if (value && !validateUrl(value)) {
      setWebsiteError("有効なURLを入力してください（例: https://example.com）");
    } else {
      setWebsiteError(null);
    }
  };

  const fetchArtist = async () => {
    try {
      const response = await artistsApi.execute("get", "/artists");
      if (isMounted.current && response?.artists) {
        const artist = response.artists.find((a) => a.id === Number(id));
        if (artist) {
          setName(artist.name);
          setWebsite(artist.website || "");
        } else {
          setError("指定されたアーティストが見つかりませんでした。");
        }
      }
    } catch (err) {
      console.error("Failed to fetch artist", err);
      if (isMounted.current) {
        setError(
          "アーティストの取得に失敗しました。後でもう一度お試しください。"
        );
      }
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!name.trim()) {
      setError("アーティスト名を入力してください。");
      return;
    }

    // URLバリデーション
    if (website && !validateUrl(website)) {
      setWebsiteError("有効なURLを入力してください（例: https://example.com）");
      return;
    }

    setSaving(true);
    setError(null);

    try {
      await api.execute("put", `/artists/${id}`, {
        name,
        website,
      });
      router.push("/community/artists");
    } catch (err) {
      console.error("Failed to update artist", err);
      if (isMounted.current) {
        setError(
          "アーティストの更新に失敗しました。後でもう一度お試しください。"
        );
        setSaving(false);
      }
    }
  };

  return (
    <Container maxWidth="md" sx={{ py: 4 }}>
      <Paper elevation={3} sx={{ p: 3 }}>
        <Typography variant="h4" component="h1" sx={{ mb: 3 }}>
          アーティスト編集
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 3 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit} noValidate>
          <TextField
            margin="normal"
            required
            fullWidth
            id="name"
            label="アーティスト名"
            name="name"
            autoFocus
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={saving}
          />
          <TextField
            margin="normal"
            fullWidth
            id="website"
            label="ウェブサイト"
            name="website"
            placeholder="https://example.com"
            value={website}
            onChange={handleWebsiteChange}
            error={!!websiteError}
            disabled={saving}
          />
          {websiteError && (
            <FormHelperText error>{websiteError}</FormHelperText>
          )}
          <Box sx={{ mt: 3, display: "flex", justifyContent: "space-between" }}>
            <Button
              variant="outlined"
              onClick={() => router.push("/community/artists")}
              disabled={saving}
            >
              キャンセル
            </Button>
            <Button
              type="submit"
              variant="contained"
              color="primary"
              disabled={saving || !!websiteError}
            >
              {saving ? <CircularProgress size={24} /> : "保存"}
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditArtistPage;
