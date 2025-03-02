"use client";

import { Box, Typography, Container, Paper, Button, Grid } from "@mui/material";
import { MusicNote, Group, LibraryMusic } from "@mui/icons-material";
import Link from "next/link";

const CommunityPage = () => {
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
          <Grid item xs={12} sm={4}>
            <Paper
              elevation={1}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
              }}
            >
              <MusicNote sx={{ fontSize: 40, mb: 1, color: "primary.main" }} />
              <Typography variant="h6" align="center" gutterBottom>
                パート管理
              </Typography>
              <Typography variant="body2" align="center" paragraph>
                演奏パートや楽器の情報を閲覧・登録できます。
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

          <Grid item xs={12} sm={4}>
            <Paper
              elevation={1}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
              }}
            >
              <LibraryMusic
                sx={{ fontSize: 40, mb: 1, color: "primary.main" }}
              />
              <Typography variant="h6" align="center" gutterBottom>
                曲管理
              </Typography>
              <Typography variant="body2" align="center" paragraph>
                曲の情報を閲覧・登録できます。（準備中）
              </Typography>
              <Button variant="contained" disabled sx={{ mt: "auto" }}>
                準備中
              </Button>
            </Paper>
          </Grid>

          <Grid item xs={12} sm={4}>
            <Paper
              elevation={1}
              sx={{
                p: 2,
                height: "100%",
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
              }}
            >
              <Group sx={{ fontSize: 40, mb: 1, color: "primary.main" }} />
              <Typography variant="h6" align="center" gutterBottom>
                アーティスト管理
              </Typography>
              <Typography variant="body2" align="center" paragraph>
                アーティストの情報を閲覧・登録できます。（準備中）
              </Typography>
              <Button variant="contained" disabled sx={{ mt: "auto" }}>
                準備中
              </Button>
            </Paper>
          </Grid>
        </Grid>

        <Box sx={{ mt: 4 }}>
          <Typography variant="h6" gutterBottom>
            今後追加される機能:
          </Typography>
          <ul>
            <Typography component="li">スタジオ情報の閲覧と予約</Typography>
            <Typography component="li">新曲のリリース情報</Typography>
            <Typography component="li">
              アーティストのプロフィールと活動情報
            </Typography>
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
