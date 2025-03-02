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
} from "@mui/material";
import { useRouter } from "next/navigation";
import { apiClient } from "@/lib/axios";
import {
  GetPartResponse,
  UpdatePartResponse,
} from "@/proto/bst/v1/part_service";
import { useApi } from "@/hooks/useApi";

const EditPartPage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const isMounted = useRef(true);

  const getApi = useApi<GetPartResponse>();
  const updateApi = useApi<UpdatePartResponse>();

  useEffect(() => {
    isMounted.current = true;

    const fetchPart = async () => {
      setLoading(true);
      try {
        const response = await getApi.execute("get", `/parts/${params.id}`);
        if (isMounted.current && response?.part) {
          setName(response.part.name);
          setDescription(response.part.description);
        }
        if (isMounted.current) {
          setError(null);
        }
      } catch (err) {
        console.error("パートの取得に失敗しました", err);
        if (isMounted.current) {
          setError("パートの取得に失敗しました。後でもう一度お試しください。");
        }
      } finally {
        if (isMounted.current) {
          setLoading(false);
        }
      }
    };

    fetchPart();

    return () => {
      isMounted.current = false;
    };
  }, [params.id]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSaving(true);
    setError(null);

    try {
      const response = await updateApi.execute("put", `/parts/${params.id}`, {
        data: {
          name,
          description,
        },
      });

      if (response) {
        router.back();
      }
    } catch (err) {
      console.error("aaaaaa パートの更新に失敗しました ----- ", err);
      setError("パートの更新に失敗しました。後でもう一度お試しください。");
    } finally {
      setSaving(false);
    }
  };

  const handleCancel = () => {
    router.push(`/community/parts/${params.id}`);
  };

  if (loading) {
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
          パート編集
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
            disabled={saving}
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
            disabled={saving}
          />

          <Box sx={{ mt: 3, display: "flex", gap: 2 }}>
            <Button
              type="submit"
              variant="contained"
              disabled={saving}
              startIcon={saving ? <CircularProgress size={20} /> : null}
            >
              {saving ? "保存中..." : "保存する"}
            </Button>
            <Button variant="outlined" onClick={handleCancel} disabled={saving}>
              キャンセル
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditPartPage;
