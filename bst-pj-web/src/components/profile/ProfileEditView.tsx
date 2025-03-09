"use client";

import { UserProfile } from "@/proto/bst/v1/user";
import { useState } from "react";
import {
  Box,
  Card,
  CardContent,
  Typography,
  Avatar,
  Chip,
  Grid,
  Divider,
  Stack,
  IconButton,
  TextField,
  Button,
  CircularProgress,
  Tooltip,
} from "@mui/material";
import {
  Person as PersonIcon,
  LocationOn as LocationIcon,
  CalendarToday as CalendarIcon,
  Edit as EditIcon,
  Save as SaveIcon,
  Cancel as CancelIcon,
} from "@mui/icons-material";
import { format } from "date-fns";
import { ja } from "date-fns/locale";
import { useUpdateProfile } from "@/features/profile/hooks";

interface ProfileEditViewProps {
  profile: UserProfile;
  email?: string;
  onProfileUpdated?: (profile: UserProfile) => void;
}

type EditableField = "name" | "introduction" | "icon";

export default function ProfileEditView({
  profile,
  email,
  onProfileUpdated,
}: ProfileEditViewProps) {
  const user = profile.user;
  const { mutate: updateProfile, isPending: isLoading } = useUpdateProfile();

  const [editMode, setEditMode] = useState<EditableField | null>(null);
  const [nameValue, setNameValue] = useState(user?.name || "");
  const [introValue, setIntroValue] = useState(profile.introduction || "");
  const [iconValue, setIconValue] = useState(user?.icon || "");

  if (!user) {
    return (
      <Box sx={{ mt: 4 }}>
        <Typography color="error">ユーザー情報が見つかりません</Typography>
      </Box>
    );
  }

  // Format the createdAt date if it exists
  const formatDate = (date?: Date) => {
    if (!date) return "不明";
    try {
      return format(date, "yyyy年MM月dd日", { locale: ja });
    } catch (error) {
      console.error("Date formatting error:", error);
      return "不明";
    }
  };

  const handleEdit = (field: EditableField) => {
    setEditMode(field);
    // Reset values to current values
    if (field === "name") setNameValue(user.name);
    if (field === "introduction") setIntroValue(profile.introduction || "");
    if (field === "icon") setIconValue(user.icon);
  };

  const handleCancel = () => {
    setEditMode(null);
  };

  const handleSave = async (field: EditableField) => {
    let value = "";

    switch (field) {
      case "name":
        value = nameValue;
        break;
      case "introduction":
        value = introValue;
        break;
      case "icon":
        value = iconValue;
        break;
    }

    if (value.trim() === "") {
      // Don't save empty values
      handleCancel();
      return;
    }

    updateProfile(
      { field, value },
      {
        onSuccess: (data) => {
          if (onProfileUpdated && data.profile) {
            onProfileUpdated(data.profile);
          }
          setEditMode(null);
        },
        onError: () => {
          // Reset to original value on error
          if (field === "name") setNameValue(user.name);
          if (field === "introduction")
            setIntroValue(profile.introduction || "");
          if (field === "icon") setIconValue(user.icon);
          setEditMode(null);
        },
      }
    );
  };

  return (
    <Card variant="outlined" sx={{ mb: 4 }}>
      <CardContent>
        {/* User header with avatar and name */}
        <Box sx={{ display: "flex", alignItems: "center", mb: 3 }}>
          <Box sx={{ position: "relative" }}>
            <Avatar
              src={user.icon || undefined}
              sx={{ width: 80, height: 80, mr: 3 }}
            >
              <PersonIcon fontSize="large" />
            </Avatar>
            <Tooltip title="アイコンを変更">
              <IconButton
                size="small"
                sx={{
                  position: "absolute",
                  bottom: 0,
                  right: 24,
                  bgcolor: "background.paper",
                  "&:hover": { bgcolor: "action.hover" },
                  border: "1px solid",
                  borderColor: "divider",
                }}
                onClick={() => handleEdit("icon")}
              >
                <EditIcon fontSize="small" />
              </IconButton>
            </Tooltip>
          </Box>

          <Box sx={{ flexGrow: 1 }}>
            {editMode === "name" ? (
              <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
                <TextField
                  value={nameValue}
                  onChange={(e) => setNameValue(e.target.value)}
                  label="名前"
                  variant="outlined"
                  size="small"
                  fullWidth
                  autoFocus
                  disabled={isLoading}
                  sx={{ mr: 1 }}
                />
                <IconButton
                  color="primary"
                  onClick={() => handleSave("name")}
                  disabled={isLoading}
                >
                  {isLoading ? <CircularProgress size={24} /> : <SaveIcon />}
                </IconButton>
                <IconButton onClick={handleCancel} disabled={isLoading}>
                  <CancelIcon />
                </IconButton>
              </Box>
            ) : (
              <Box sx={{ display: "flex", alignItems: "center" }}>
                <Typography variant="h5" component="h2" gutterBottom>
                  {user.name}
                </Typography>
                <Tooltip title="名前を編集">
                  <IconButton
                    size="small"
                    sx={{ ml: 1 }}
                    onClick={() => handleEdit("name")}
                  >
                    <EditIcon fontSize="small" />
                  </IconButton>
                </Tooltip>
              </Box>
            )}
            {email && (
              <Typography variant="body2" color="text.secondary">
                {email}
              </Typography>
            )}
          </Box>
        </Box>

        <Divider sx={{ my: 2 }} />

        {/* User basic info section */}
        <Grid container spacing={2} sx={{ mb: 3 }}>
          {/* Activity area */}
          <Grid item xs={12} sm={6}>
            <Box sx={{ display: "flex", alignItems: "center" }}>
              <LocationIcon color="action" sx={{ mr: 1 }} />
              <Typography variant="subtitle2" component="span">
                主な活動場所:
              </Typography>
              <Typography variant="body2" sx={{ ml: 1 }}>
                {profile.area?.name || "未設定"}
              </Typography>
              {/* Area editing will be implemented in the future */}
            </Box>
          </Grid>

          {/* Join date */}
          <Grid item xs={12} sm={6}>
            <Box sx={{ display: "flex", alignItems: "center" }}>
              <CalendarIcon color="action" sx={{ mr: 1 }} />
              <Typography variant="subtitle2" component="span">
                参加日:
              </Typography>
              <Typography variant="body2" sx={{ ml: 1 }}>
                {formatDate(profile.createdAt)}
              </Typography>
            </Box>
          </Grid>
        </Grid>

        {/* Introduction section */}
        <Box sx={{ mb: 3 }}>
          <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
            <Typography variant="h6">自己紹介</Typography>
            {editMode !== "introduction" && (
              <Tooltip title="自己紹介を編集">
                <IconButton
                  size="small"
                  sx={{ ml: 1 }}
                  onClick={() => handleEdit("introduction")}
                >
                  <EditIcon fontSize="small" />
                </IconButton>
              </Tooltip>
            )}
          </Box>

          {editMode === "introduction" ? (
            <Box>
              <TextField
                value={introValue}
                onChange={(e) => setIntroValue(e.target.value)}
                label="自己紹介"
                variant="outlined"
                multiline
                rows={4}
                fullWidth
                autoFocus
                disabled={isLoading}
                sx={{ mb: 1 }}
              />
              <Box sx={{ display: "flex", justifyContent: "flex-end" }}>
                <Button
                  variant="outlined"
                  startIcon={<CancelIcon />}
                  onClick={handleCancel}
                  disabled={isLoading}
                  sx={{ mr: 1 }}
                >
                  キャンセル
                </Button>
                <Button
                  variant="contained"
                  startIcon={
                    isLoading ? <CircularProgress size={16} /> : <SaveIcon />
                  }
                  onClick={() => handleSave("introduction")}
                  disabled={isLoading}
                >
                  保存
                </Button>
              </Box>
            </Box>
          ) : (
            <Typography
              variant="body1"
              paragraph
              sx={{ whiteSpace: "pre-wrap" }}
            >
              {profile.introduction || "自己紹介はまだ設定されていません"}
            </Typography>
          )}
        </Box>

        {/* Favorites section */}
        {profile.favorite && (
          <>
            <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
              <Typography variant="h6">好きなジャンル</Typography>
              {/* Genre editing will be implemented in the future */}
            </Box>
            <Stack direction="row" spacing={1} flexWrap="wrap" sx={{ mb: 2 }}>
              {profile.favorite.genres.length > 0 ? (
                profile.favorite.genres.map((genre) => (
                  <Chip
                    key={genre.id}
                    label={genre.name}
                    size="small"
                    sx={{ m: 0.5 }}
                  />
                ))
              ) : (
                <Typography variant="body2" color="text.secondary">
                  未設定
                </Typography>
              )}
            </Stack>

            <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
              <Typography variant="h6">好きなアーティスト</Typography>
              {/* Artist editing will be implemented in the future */}
            </Box>
            <Stack direction="row" spacing={1} flexWrap="wrap" sx={{ mb: 2 }}>
              {profile.favorite.artists.length > 0 ? (
                profile.favorite.artists.map((artist) => (
                  <Chip
                    key={artist.id}
                    label={artist.name}
                    size="small"
                    sx={{ m: 0.5 }}
                  />
                ))
              ) : (
                <Typography variant="body2" color="text.secondary">
                  未設定
                </Typography>
              )}
            </Stack>

            <Box sx={{ display: "flex", alignItems: "center", mb: 1 }}>
              <Typography variant="h6">担当パート</Typography>
              {/* Part editing will be implemented in the future */}
            </Box>
            <Stack direction="row" spacing={1} flexWrap="wrap">
              {profile.favorite.parts.length > 0 ? (
                profile.favorite.parts.map((part) => (
                  <Chip
                    key={part.id}
                    label={part.name}
                    size="small"
                    sx={{ m: 0.5 }}
                  />
                ))
              ) : (
                <Typography variant="body2" color="text.secondary">
                  未設定
                </Typography>
              )}
            </Stack>
          </>
        )}

        {/* Badges section */}
        {profile.badges && profile.badges.length > 0 && (
          <>
            <Typography variant="h6" gutterBottom sx={{ mt: 2 }}>
              バッジ
            </Typography>
            <Stack direction="row" spacing={1} flexWrap="wrap">
              {profile.badges.map((badge) => (
                <Chip
                  key={badge.id}
                  label={badge.name}
                  size="small"
                  sx={{
                    m: 0.5,
                    bgcolor: badge.color || "primary.main",
                    color: "white",
                  }}
                />
              ))}
            </Stack>
          </>
        )}
      </CardContent>
    </Card>
  );
}
