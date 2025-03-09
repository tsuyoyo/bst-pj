"use client";

import { useState, useEffect } from "react";
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Button,
  TextField,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  Checkbox,
  CircularProgress,
  Box,
  Typography,
  InputAdornment,
} from "@mui/material";
import { Search as SearchIcon, Close as CloseIcon } from "@mui/icons-material";

export interface SelectionItem {
  id: number;
  name: string;
  [key: string]: any; // 追加のプロパティを許可
}

interface SelectionModalProps {
  open: boolean;
  onClose: () => void;
  title: string;
  items: SelectionItem[];
  selectedIds: number[];
  onSave: (selectedIds: number[]) => void;
  loading?: boolean;
  error?: string;
}

export default function SelectionModal({
  open,
  onClose,
  title,
  items,
  selectedIds,
  onSave,
  loading = false,
  error,
}: SelectionModalProps) {
  const [selected, setSelected] = useState<number[]>([]);
  const [searchQuery, setSearchQuery] = useState("");
  const [filteredItems, setFilteredItems] = useState<SelectionItem[]>(items);

  // 選択状態を初期化
  useEffect(() => {
    setSelected(selectedIds);
  }, [selectedIds, open]);

  // 検索クエリが変更されたときにアイテムをフィルタリング
  useEffect(() => {
    if (searchQuery.trim() === "") {
      setFilteredItems(items);
    } else {
      const query = searchQuery.toLowerCase();
      setFilteredItems(
        items.filter((item) => item.name.toLowerCase().includes(query))
      );
    }
  }, [searchQuery, items]);

  const handleToggle = (id: number) => {
    const currentIndex = selected.indexOf(id);
    const newSelected = [...selected];

    if (currentIndex === -1) {
      newSelected.push(id);
    } else {
      newSelected.splice(currentIndex, 1);
    }

    setSelected(newSelected);
  };

  const handleSave = () => {
    onSave(selected);
    onClose();
  };

  return (
    <Dialog
      open={open}
      onClose={onClose}
      fullWidth
      maxWidth="sm"
      aria-labelledby="selection-dialog-title"
    >
      <DialogTitle id="selection-dialog-title">
        <Box
          sx={{
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
          }}
        >
          {title}
          <Button size="small" onClick={onClose} startIcon={<CloseIcon />}>
            閉じる
          </Button>
        </Box>
      </DialogTitle>

      <DialogContent dividers>
        <TextField
          autoFocus
          margin="dense"
          label="検索"
          type="search"
          fullWidth
          variant="outlined"
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <SearchIcon />
              </InputAdornment>
            ),
          }}
          sx={{ mb: 2 }}
        />

        {loading ? (
          <Box sx={{ display: "flex", justifyContent: "center", p: 3 }}>
            <CircularProgress />
          </Box>
        ) : error ? (
          <Typography color="error" sx={{ p: 2 }}>
            {error}
          </Typography>
        ) : filteredItems.length === 0 ? (
          <Typography
            sx={{ p: 2, textAlign: "center", color: "text.secondary" }}
          >
            {searchQuery
              ? "検索結果がありません"
              : "選択可能な項目がありません"}
          </Typography>
        ) : (
          <List sx={{ pt: 0, maxHeight: "50vh", overflow: "auto" }}>
            {filteredItems.map((item) => {
              const isSelected = selected.indexOf(item.id) !== -1;
              return (
                <ListItem key={item.id} disablePadding>
                  <ListItemButton onClick={() => handleToggle(item.id)} dense>
                    <ListItemIcon>
                      <Checkbox
                        edge="start"
                        checked={isSelected}
                        tabIndex={-1}
                        disableRipple
                      />
                    </ListItemIcon>
                    <ListItemText primary={item.name} />
                  </ListItemButton>
                </ListItem>
              );
            })}
          </List>
        )}
      </DialogContent>

      <DialogActions>
        <Button onClick={onClose} color="inherit">
          キャンセル
        </Button>
        <Button
          onClick={handleSave}
          color="primary"
          variant="contained"
          disabled={loading}
        >
          保存
        </Button>
      </DialogActions>
    </Dialog>
  );
}
