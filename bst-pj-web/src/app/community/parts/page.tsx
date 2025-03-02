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
  Alert,
} from "@mui/material";
import { Add as AddIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { Part } from "@/proto/bst/v1/content";
import { ListPartsResponse } from "@/proto/bst/v1/part_service";
import { useApi } from "@/hooks/useApi";

const PAGE_SIZE = 10;

const PartsListPage = () => {
  const router = useRouter();
  const [parts, setParts] = useState<Part[]>([]);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [nextPageToken, setNextPageToken] = useState("");

  const api = useApi<ListPartsResponse>();

  const fetchParts = async (pageToken = "") => {
    const response = await api.execute("get", "/parts", {
      params: {
        pageSize: PAGE_SIZE,
        pageToken,
      },
    });

    if (response) {
      setParts(response.parts);
      setNextPageToken(response.nextPageToken);
      setTotalPages(Math.ceil(response.totalSize / PAGE_SIZE));
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

        {api.error && (
          <Alert severity="error" sx={{ mb: 3 }}>
            {api.error}
          </Alert>
        )}

        {api.loading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
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
