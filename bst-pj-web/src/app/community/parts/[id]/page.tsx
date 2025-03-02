"use client";

import { useState, useEffect } from "react";
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
import { apiClient } from "@/lib/axios";
import { GetPartResponse, Part } from "@/proto/bst/v1/part_service";

const PartDetailPage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [part, setPart] = useState<Part | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchPart = async () => {
      setLoading(true);
      try {
        const response = await apiClient.get(`/parts/${params.id}`);
        const data = response.data as GetPartResponse;
        setPart(data.part || null);
        setError(null);
      } catch (err) {
        console.error("パートの取得に失敗しました", err);
        setError("パートの取得に失敗しました。後でもう一度お試しください。");
      } finally {
        setLoading(false);
      }
    };

    fetchPart();
  }, [params.id]);

  const handleEdit = () => {
    router.push(`/community/parts/${params.id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/parts");
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

  if (error || !part) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {error || "パートが見つかりませんでした。"}
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
            {part.name}
          </Typography>
          <Button
            variant="outlined"
            startIcon={<EditIcon />}
            onClick={handleEdit}
          >
            編集
          </Button>
        </Box>

        <Typography variant="h6" gutterBottom>
          説明
        </Typography>
        <Typography variant="body1" paragraph>
          {part.description}
        </Typography>

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          一覧に戻る
        </Button>
      </Paper>
    </Container>
  );
};

export default PartDetailPage;
