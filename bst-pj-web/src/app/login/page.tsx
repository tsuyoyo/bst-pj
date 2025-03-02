"use client";

import { useState } from "react";
import { useLogin } from "@/features/auth/hooks";
import Link from "next/link";
import {
  Box,
  Button,
  Container,
  TextField,
  Typography,
  Paper,
  Alert,
  Link as MuiLink,
} from "@mui/material";

const LoginPage = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const { mutate: login, isPending, error } = useLogin();

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    login({ email, password });
  };

  return (
    <Container className="page-container" component="main" maxWidth="xs">
      <Paper
        elevation={3}
        sx={{
          mt: 8,
          p: 4,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
        }}
      >
        <Typography component="h1" variant="h5">
          アカウントにログイン
        </Typography>
        <Box component="form" onSubmit={handleSubmit} sx={{ mt: 3 }}>
          <TextField
            margin="normal"
            required
            fullWidth
            id="email"
            label="メールアドレス"
            name="email"
            autoComplete="email"
            autoFocus
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
          <TextField
            margin="normal"
            required
            fullWidth
            name="password"
            label="パスワード"
            type="password"
            id="password"
            autoComplete="current-password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />

          {error && (
            <Alert severity="error" sx={{ mt: 2 }}>
              ログインに失敗しました。メールアドレスとパスワードを確認してください。
            </Alert>
          )}

          <Box sx={{ mt: 2, mb: 2 }}>
            <MuiLink
              component={Link}
              href="/signup"
              variant="body2"
              underline="hover"
            >
              アカウントをお持ちでない方はこちら
            </MuiLink>
          </Box>

          <Button
            type="submit"
            fullWidth
            variant="contained"
            disabled={isPending}
            sx={{ mt: 3, mb: 2 }}
          >
            {isPending ? "ログイン中..." : "ログイン"}
          </Button>
        </Box>
      </Paper>
    </Container>
  );
};

export default LoginPage;
