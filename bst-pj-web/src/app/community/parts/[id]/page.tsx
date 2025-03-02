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
import { GetPartResponse } from "@/proto/bst/v1/part_service";
import { Part } from "@/proto/bst/v1/content";
import { useApi } from "@/hooks/useApi";

const PartDetailPage = ({ params }: { params: { id: string } }) => {
  const router = useRouter();
  const [part, setPart] = useState<Part | null>(null);
  const api = useApi<GetPartResponse>();
  const isMounted = useRef(true);

  // マウント時に一度だけ実行
  useEffect(() => {
    // コンポーネントがマウントされているかチェック
    isMounted.current = true;

    const fetchPart = async () => {
      console.log("API call ---------");
      const response = await api.execute("get", `/parts/${params.id}`);
      // アンマウント後の状態更新を防止
      if (isMounted.current && response) {
        setPart(response.part || null);
      }
    };

    fetchPart();

    // クリーンアップ関数
    return () => {
      isMounted.current = false;
    };
  }, [params.id]); // api.executeを依存配列から削除

  const handleEdit = () => {
    router.push(`/community/parts/${params.id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/parts");
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

  if (api.error || !part) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {api.error || "パートが見つかりませんでした。"}
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
