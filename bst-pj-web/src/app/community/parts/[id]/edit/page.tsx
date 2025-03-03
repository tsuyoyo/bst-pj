"use client";

import { useState, useEffect, useRef } from "react";
import React from "react";
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
import {
  GetPartResponse,
  UpdatePartResponse,
} from "@/proto/bst/v1/part_service";
import { useApi } from "@/hooks/useApi";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const EditPartPage = ({ params }: { params: { id: string } }) => {
  const id = React.use(params as any).id;

  const router = useRouter();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const isMounted = useRef(true);
  const { user } = useSelector((state: RootState) => state.auth);

  const getApi = useApi<GetPartResponse>();
  const updateApi = useApi<UpdatePartResponse>();

  useEffect(() => {
    if (!user) {
      router.push(`/login?redirect=/community/parts/${id}/edit`);
    }
  }, [user, router, id]);

  useEffect(() => {
    isMounted.current = true;

    const fetchPart = async () => {
      setLoading(true);
      try {
        const response = await getApi.execute("get", `/parts/${id}`);
        if (isMounted.current && response?.part) {
          setName(response.part.name);
          setDescription(response.part.description);
        }
        if (isMounted.current) {
          setError(null);
        }
      } catch (err) {
        console.error("Failed to fetch part", err);
        if (isMounted.current) {
          setError("Failed to fetch part. Please try again later.");
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
  }, [id]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSaving(true);
    setError(null);

    try {
      const response = await updateApi.execute("put", `/parts/${id}`, {
        name,
        description,
      });

      if (response) {
        router.back();
      }
    } catch (err) {
      console.error("Failed to update part ----- ", err);
      setError("Failed to update part. Please try again later.");
    } finally {
      setSaving(false);
    }
  };

  const handleCancel = () => {
    router.push(`/community/parts/${id}`);
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
          Edit Part
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}

        <Box component="form" onSubmit={handleSubmit}>
          <TextField
            label="Name"
            fullWidth
            margin="normal"
            required
            value={name}
            onChange={(e) => setName(e.target.value)}
            disabled={saving}
          />

          <TextField
            label="Description"
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
              {saving ? "Saving..." : "Save"}
            </Button>
            <Button variant="outlined" onClick={handleCancel} disabled={saving}>
              Cancel
            </Button>
          </Box>
        </Box>
      </Paper>
    </Container>
  );
};

export default EditPartPage;
