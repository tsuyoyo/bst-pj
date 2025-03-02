"use client";

import { useState } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  TextField,
  Button,
  Alert,
  CircularProgress,
} from "@mui/material";
import { useRouter } from "next/navigation";
import { useApi } from "@/hooks/useApi";
import { CreatePartResponse } from "@/proto/bst/v1/part_service";

const NewPartPage = () => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const api = useApi<CreatePartResponse>();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    try {
      const response = await api.execute("post", "/parts", {
        data: {
          name,
          description,
        },
      });

      if (response) {
        router.push(`/community/parts/${response.part?.id}`);
      }
    } catch (err) {
      console.error("パートの登録に失敗しました", err);
      setError("パートの登録に失敗しました。後でもう一度お試しください。");
    } finally {
      setLoading(false);
    }
  };

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          新規パート登録
        </Typography>
        <Typography variant="body1" paragraph>
          新しい演奏パートや楽器を登録して、コミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 3 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="パート名"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={loading}
          />
          <TextField
            label="説明"
            fullWidth
            margin="normal"
            multiline
            rows={4}
            required
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            disabled={loading}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={loading}
              startIcon={loading ? <CircularProgress size={20} /> : null}
            >
              {loading ? "登録中..." : "登録する"}
            </Button>
            <Button
              variant="outlined"
              onClick={() => router.push("/community/parts")}
              disabled={loading}
            >
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default NewPartPage;
