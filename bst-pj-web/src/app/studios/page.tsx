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
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  SelectChangeEvent,
} from "@mui/material";
import { Add as AddIcon, Edit as EditIcon } from "@mui/icons-material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import { useStudios } from "@/features/studios/hooks";
import { useAreas } from "@/features/areas/hooks";

const StudiosListPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);
  const [selectedPrefecture, setSelectedPrefecture] = useState<number | "">("");

  // エリア情報を取得
  const {
    data: areasData,
    isLoading: isAreasLoading,
    error: areasError,
  } = useAreas();
  const areas = areasData?.areas || [];

  // スタジオ情報を取得
  const {
    data: studiosData,
    isLoading: isStudiosLoading,
    error: studiosError,
  } = useStudios(
    10,
    undefined,
    selectedPrefecture ? Number(selectedPrefecture) : undefined
  );
  const studios = studiosData?.studios || [];

  const handleAddStudio = () => {
    router.push("/studios/new");
  };

  const handleViewStudio = (id: number) => {
    router.push(`/studios/${id}`);
  };

  const handleEditStudio = (id: number) => {
    router.push(`/studios/${id}/edit`);
  };

  const handlePrefectureChange = (event: SelectChangeEvent<number | "">) => {
    setSelectedPrefecture(event.target.value as number | "");
  };

  // エリア名を取得する関数
  const getAreaName = (prefectureId: number): string => {
    const area = areas.find((area) => area.prefectureId === prefectureId);
    return area ? area.name : `都道府県ID: ${prefectureId}`;
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

        <FormControl sx={{ mb: 3, minWidth: 200 }}>
          <InputLabel id="prefecture-filter-label">エリアで絞り込み</InputLabel>
          <Select
            labelId="prefecture-filter-label"
            id="prefecture-filter"
            value={selectedPrefecture}
            label="エリアで絞り込み"
            onChange={handlePrefectureChange}
            disabled={isAreasLoading}
          >
            <MenuItem value="">すべて</MenuItem>
            {isAreasLoading ? (
              <MenuItem disabled>読み込み中...</MenuItem>
            ) : areasError ? (
              <MenuItem disabled>エリア情報の取得に失敗しました</MenuItem>
            ) : (
              areas.map((area) => (
                <MenuItem key={area.prefectureId} value={area.prefectureId}>
                  {area.name}
                </MenuItem>
              ))
            )}
          </Select>
        </FormControl>

        {isStudiosLoading ? (
          <Box sx={{ display: "flex", justifyContent: "center", my: 4 }}>
            <CircularProgress />
          </Box>
        ) : studiosError ? (
          <Alert severity="error" sx={{ mb: 2 }}>
            スタジオ情報の取得に失敗しました。
          </Alert>
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
                        {studio.description && (
                          <Typography
                            variant="body2"
                            color="text.secondary"
                            sx={{ mb: 0.5 }}
                          >
                            {studio.description}
                          </Typography>
                        )}
                        {studio.area && (
                          <Chip
                            label={studio.area.name}
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
