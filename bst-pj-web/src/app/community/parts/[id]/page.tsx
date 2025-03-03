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

  // Execute once on mount
  useEffect(() => {
    // Check if component is mounted
    isMounted.current = true;

    const fetchPart = async () => {
      const response = await api.execute("get", `/parts/${params.id}`);
      // Prevent state updates after unmount
      if (isMounted.current && response) {
        setPart(response.part || null);
      }
    };

    fetchPart();

    // Cleanup function
    return () => {
      isMounted.current = false;
    };
  }, [params.id]); // Remove api.execute from dependency array

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
        <Alert severity="error">{api.error || "Part not found."}</Alert>
        <Button sx={{ mt: 2 }} onClick={handleBack}>
          Back to list
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
            Edit
          </Button>
        </Box>

        <Typography variant="h6" gutterBottom>
          Description
        </Typography>
        <Typography variant="body1" paragraph>
          {part.description}
        </Typography>

        <Button onClick={handleBack} sx={{ mt: 3 }}>
          Back to list
        </Button>
      </Paper>
    </Container>
  );
};

export default PartDetailPage;
