"use client";

import { useState } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  List,
  ListItem,
  ListItemText,
  Divider,
  CircularProgress,
  Alert,
  ListItemButton,
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useParts } from "@/features/parts/hooks";

const PartsListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useParts();
  const parts = data?.parts || [];

  const handleAddPart = () => {
    router.push("/community/parts/new");
  };

  const handleEditPart = (id: number) => {
    router.push(`/community/parts/${id}/edit`);
  };

  const handleViewPart = (id: number) => {
    router.push(`/community/parts/${id}`);
  };

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
            パート一覧
          </Typography>
          {user && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleAddPart}
            >
              新規パート登録
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          楽器パートの一覧です。新しいパートを登録してコミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            パートの取得に失敗しました。後でもう一度お試しください。
          </Alert>
        )}

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : parts.length === 0 ? (
          <Typography>
            パートが登録されていません。新しいパートを追加してください。
          </Typography>
        ) : (
          <List>
            {parts.map((part, index) => (
              <Box key={part.id}>
                {index > 0 && <Divider />}
                <ListItemButton onClick={() => handleViewPart(part.id)}>
                  <ListItemText
                    primary={part.name}
                    secondary={part.description}
                  />
                  {user && (
                    <Button
                      size="small"
                      startIcon={<EditIcon />}
                      onClick={(e) => {
                        e.stopPropagation();
                        handleEditPart(part.id);
                      }}
                    >
                      編集
                    </Button>
                  )}
                </ListItemButton>
              </Box>
            ))}
          </List>
        )}
      </Paper>
    </Container>
  );
};

export default PartsListPage;
