"use client";

import { UserProfile } from "@/proto/bst/v1/user";
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
} from "@mui/material";
import {
  Person as PersonIcon,
  LocationOn as LocationIcon,
  CalendarToday as CalendarIcon,
} from "@mui/icons-material";
import { format } from "date-fns";
import { ja } from "date-fns/locale";

interface ProfileViewProps {
  profile: UserProfile;
  email?: string;
}

export default function ProfileView({ profile, email }: ProfileViewProps) {
  const user = profile.user;

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

  return (
    <Card variant="outlined" sx={{ mb: 4 }}>
      <CardContent>
        <Box sx={{ display: "flex", alignItems: "center", mb: 3 }}>
          <Avatar
            src={user.icon || undefined}
            sx={{ width: 80, height: 80, mr: 3 }}
          >
            <PersonIcon fontSize="large" />
          </Avatar>
          <Box>
            <Typography variant="h5" component="h2" gutterBottom>
              {user.name}
            </Typography>
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

        <Typography variant="h6" gutterBottom>
          自己紹介
        </Typography>
        <Typography variant="body1" paragraph sx={{ whiteSpace: "pre-wrap" }}>
          {profile.introduction || "自己紹介はまだ設定されていません"}
        </Typography>

        {profile.favorite && (
          <>
            <Typography variant="h6" gutterBottom>
              好きなジャンル
            </Typography>
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

            <Typography variant="h6" gutterBottom>
              好きなアーティスト
            </Typography>
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

            <Typography variant="h6" gutterBottom>
              担当パート
            </Typography>
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
