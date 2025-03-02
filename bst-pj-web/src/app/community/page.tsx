"use client";

import { Box, Typography, Container, Paper } from "@mui/material";

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
        <Typography variant="body1" paragraph>
          このページからスタジオ、曲、アーティストの情報にアクセスできるようになります。
        </Typography>
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
