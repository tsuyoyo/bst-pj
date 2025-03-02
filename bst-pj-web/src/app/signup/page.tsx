"use client";

import { useState } from "react";
import { useRegister } from "@/features/auth/hooks";
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

const SignupPage = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const { mutate: register, isPending, error } = useRegister();

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    register({ email, password, name });
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
          アカウント登録
        </Typography>
        <Box component="form" onSubmit={handleSubmit} sx={{ mt: 3 }}>
          <TextField
            margin="normal"
            required
            fullWidth
            id="name"
            label="名前"
            name="name"
            autoComplete="name"
            autoFocus
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
          <TextField
            margin="normal"
            required
            fullWidth
            id="email"
            label="メールアドレス"
            name="email"
            autoComplete="email"
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
            autoComplete="new-password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />

          {error && (
            <Alert severity="error" sx={{ mt: 2 }}>
              登録に失敗しました。もう一度お試しください。
            </Alert>
          )}

          <Box sx={{ mt: 2, mb: 2 }}>
            <MuiLink
              component={Link}
              href="/login"
              variant="body2"
              underline="hover"
            >
              すでにアカウントをお持ちの方はこちら
            </MuiLink>
          </Box>

          <Button
            type="submit"
            fullWidth
            variant="contained"
            disabled={isPending}
            sx={{ mt: 3, mb: 2 }}
          >
            {isPending ? "登録中..." : "登録する"}
          </Button>
        </Box>
      </Paper>
    </Container>
  );
};

export default SignupPage;
