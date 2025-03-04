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
import React from "react";
import { usePart } from "@/features/parts/hooks";

const PartDetailPage = ({ params }: { params: { id: string } }) => {
  const { id } = React.use(params as unknown as Usable<{ id: string }>);
  const router = useRouter();

  // React Queryフックを使用
  const { data, isLoading, error } = usePart(id);
  const part = data?.part || null;

  const handleEdit = () => {
    router.push(`/community/parts/${id}/edit`);
  };

  const handleBack = () => {
    router.push("/community/parts");
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

  if (error || !part) {
    return (
      <Container className="page-container">
        <Alert severity="error">
          {error
            ? "パートの取得に失敗しました。"
            : "パートが見つかりませんでした。"}
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
