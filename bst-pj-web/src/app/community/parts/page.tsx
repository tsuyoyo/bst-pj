"use client";

import { useState, useEffect } from "react";
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
  Pagination,
} from "@mui/material";
import { Add as AddIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { apiClient } from "@/lib/axios";
import { Part } from "@/proto/bst/v1/content";
import { ListPartsResponse } from "@/proto/bst/v1/part_service";

const PAGE_SIZE = 10;

const PartsListPage = () => {
  const router = useRouter();
  const [parts, setParts] = useState<Part[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [nextPageToken, setNextPageToken] = useState("");

  const fetchParts = async (pageToken = "") => {
    setLoading(true);
    try {
      const response = await apiClient.get("/parts", {
        params: {
          pageSize: PAGE_SIZE,
          pageToken,
        },
      });
      const data = response.data as ListPartsResponse;
      setParts(data.parts);
      setNextPageToken(data.nextPageToken);
      setTotalPages(Math.ceil(data.totalSize / PAGE_SIZE));
      setError(null);
    } catch (err) {
      console.error("パートの取得に失敗しました", err);
      setError("パートの取得に失敗しました。後でもう一度お試しください。");
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchParts();
  }, []);

  const handlePageChange = (
    event: React.ChangeEvent<unknown>,
    value: number
  ) => {
    setPage(value);
    // ページトークンを使用してページネーションを実装
    // 実際の実装ではページトークンの管理が必要
    fetchParts(nextPageToken);
  };

  const handleAddPart = () => {
    router.push("/community/parts/new");
  };

  const handleEditPart = (partId: number) => {
    router.push(`/community/parts/${partId}/edit`);
  };

  const handleViewPart = (partId: number) => {
    router.push(`/community/parts/${partId}`);
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
          <Button
            variant="contained"
            color="primary"
            startIcon={<AddIcon />}
            onClick={handleAddPart}
          >
            新規パート登録
          </Button>
        </Box>

        <Typography variant="body1" paragraph>
          演奏パートや楽器の一覧です。新しいパートを登録してコミュニティに貢献しましょう。
        </Typography>

        {loading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : error ? (
          <Typography color="error">{error}</Typography>
        ) : parts.length === 0 ? (
          <Typography>
            パートが登録されていません。新しいパートを追加してください。
          </Typography>
        ) : (
          <>
            <List>
              {parts.map((part, index) => (
                <Box key={part.id}>
                  {index > 0 && <Divider />}
                  <ListItem
                    sx={{ cursor: "pointer" }}
                    onClick={() => handleViewPart(part.id)}
                  >
                    <ListItemText
                      primary={part.name}
                      secondary={part.description}
                    />
                    <Button
                      size="small"
                      onClick={(e) => {
                        e.stopPropagation();
                        handleEditPart(part.id);
                      }}
                    >
                      編集
                    </Button>
                  </ListItem>
                </Box>
              ))}
            </List>

            <Box sx={{ display: "flex", justifyContent: "center", mt: 3 }}>
              <Pagination
                count={totalPages}
                page={page}
                onChange={handlePageChange}
                color="primary"
              />
            </Box>
          </>
        )}
      </Paper>
    </Container>
  );
};

export default PartsListPage;
