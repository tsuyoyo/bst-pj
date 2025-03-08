"use client";

import { useState } from "react";
import {
  Box,
  Typography,
  Container,
  Paper,
  Button,
  List,
  ListItemText,
  Divider,
  CircularProgress,
  Alert,
  ListItemButton,
  Chip,
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useStudios } from "@/features/studios/hooks";

const StudiosListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  // React Queryフックを使用
  const { data, isLoading, error } = useStudios();
  const studios = data?.studios || [];

  const handleAddStudio = () => {
    router.push("/community/studios/new");
  };

  const handleEditStudio = (id: number) => {
    router.push(`/community/studios/${id}/edit`);
  };

  const handleViewStudio = (id: number) => {
    router.push(`/community/studios/${id}`);
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
            スタジオ一覧
          </Typography>
          {user && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleAddStudio}
            >
              新規スタジオ登録
            </Button>
          )}
        </Box>

        <Typography variant="body1" paragraph>
          スタジオの一覧です。新しいスタジオを登録してコミュニティに貢献しましょう。
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            スタジオの取得に失敗しました。後でもう一度お試しください。
          </Alert>
        )}

        {isLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : studios.length === 0 ? (
          <Typography>
            スタジオが登録されていません。新しいスタジオを追加してください。
          </Typography>
        ) : (
          <List>
            {studios.map((studio, index) => (
              <Box key={studio.id}>
                {index > 0 && <Divider />}
                <ListItemButton onClick={() => handleViewStudio(studio.id)}>
                  <ListItemText
                    primary={studio.name}
                    secondary={
                      <>
                        {studio.description}
                        {studio.location && (
                          <Chip
                            label={`${studio.location.address}`}
                            size="small"
                            sx={{ mt: 0.5, ml: 1 }}
                          />
                        )}
                      </>
                    }
                  />
                  {user && (
                    <Button
                      size="small"
                      startIcon={<EditIcon />}
                      onClick={(e) => {
                        e.stopPropagation();
                        handleEditStudio(studio.id);
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

export default StudiosListPage;
