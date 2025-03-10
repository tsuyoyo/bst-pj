"use client";

import { Box, Typography, Container, Paper, Button, Grid } from "@mui/material";
import {
  MusicNote,
  Group,
  LibraryMusic,
  Category,
  MeetingRoom,
} from "@mui/icons-material";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";

const CommunityPage = () => {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  const handleNavigate = (path: string) => {
    router.push(path);
  };

  return (
    <Container className="page-container">
      <Paper elevation={2} sx={{ p: 3, mt: 2 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          コミュニティ
        </Typography>
        <Typography variant="body1" paragraph>
          ここはコミュニティページです。音楽を愛する人々が集まり、情報を共有する場所です。
        </Typography>

        <Grid container spacing={3} sx={{ mt: 2 }}>
          <Grid item xs={12} sm={6} md={4}>
            <Paper
              elevation={3}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  mb: 2,
                }}
              >
                <MusicNote sx={{ mr: 1, color: "primary.main" }} />
                <Typography variant="h6">パート</Typography>
              </Box>
              <Typography variant="body2" sx={{ mb: 2, flexGrow: 1 }}>
                楽器やボーカルなどのパート情報を管理します。
              </Typography>
              <Button
                component={Link}
                href="/community/parts"
                variant="contained"
                sx={{ mt: "auto" }}
              >
                パート一覧を見る
              </Button>
            </Paper>
          </Grid>

          <Grid item xs={12} sm={6} md={4}>
            <Paper
              elevation={3}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  mb: 2,
                }}
              >
                <Group sx={{ mr: 1, color: "primary.main" }} />
                <Typography variant="h6">アーティスト</Typography>
              </Box>
              <Typography variant="body2" sx={{ mb: 2, flexGrow: 1 }}>
                アーティスト情報を管理します。
              </Typography>
              <Button
                component={Link}
                href="/community/artists"
                variant="contained"
                sx={{ mt: "auto" }}
              >
                アーティスト一覧を見る
              </Button>
            </Paper>
          </Grid>

          <Grid item xs={12} sm={6} md={4}>
            <Paper
              elevation={3}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  mb: 2,
                }}
              >
                <LibraryMusic sx={{ mr: 1, color: "primary.main" }} />
                <Typography variant="h6">曲</Typography>
              </Box>
              <Typography variant="body2" sx={{ mb: 2, flexGrow: 1 }}>
                曲情報を管理します。
              </Typography>
              <Button
                component={Link}
                href="/community/songs"
                variant="contained"
                sx={{ mt: "auto" }}
              >
                曲一覧を見る
              </Button>
            </Paper>
          </Grid>

          <Grid item xs={12} sm={6} md={4}>
            <Paper
              elevation={3}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  mb: 2,
                }}
              >
                <Category sx={{ mr: 1, color: "primary.main" }} />
                <Typography variant="h6">ジャンル</Typography>
              </Box>
              <Typography variant="body2" sx={{ mb: 2, flexGrow: 1 }}>
                音楽ジャンル情報を管理します。
              </Typography>
              <Button
                component={Link}
                href="/community/genres"
                variant="contained"
                sx={{ mt: "auto" }}
              >
                ジャンル一覧を見る
              </Button>
            </Paper>
          </Grid>

          <Grid item xs={12} sm={6} md={4}>
            <Paper
              elevation={3}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  mb: 2,
                }}
              >
                <MeetingRoom sx={{ mr: 1, color: "primary.main" }} />
                <Typography variant="h6">スタジオ</Typography>
              </Box>
              <Typography variant="body2" sx={{ mb: 2, flexGrow: 1 }}>
                練習スタジオ情報を管理します。
              </Typography>
              <Button
                component={Link}
                href="/studios"
                variant="contained"
                sx={{ mt: "auto" }}
              >
                スタジオ一覧を見る
              </Button>
            </Paper>
          </Grid>
        </Grid>

        <Box sx={{ mt: 4 }}>
          <Typography variant="h6" gutterBottom>
            今後追加される機能:
          </Typography>
          <ul>
            <Typography component="li">音楽イベントのカレンダー</Typography>
            <Typography component="li">
              コミュニティメンバー同士の交流機能
            </Typography>
          </ul>
        </Box>
      </Paper>
    </Container>
  );
};

export default CommunityPage;
