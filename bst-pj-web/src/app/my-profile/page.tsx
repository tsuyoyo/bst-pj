"use client";

import { useEffect, useState } from "react";
import { Box, Container, Typography, CircularProgress } from "@mui/material";
import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import ProfileEditView from "@/components/profile/ProfileEditView";
import { useMyProfile } from "@/features/profile/hooks";
import { UserProfile } from "@/proto/bst/v1/user";

export default function MyProfilePage() {
  const router = useRouter();
  const { accessToken, isLoading: authLoading } = useSelector(
    (state: RootState) => state.auth
  );
  const [authChecked, setAuthChecked] = useState(false);
  const [profile, setProfile] = useState<UserProfile | null>(null);

  // 認証状態の確認
  useEffect(() => {
    console.log("Auth state:", { accessToken, authLoading });
    if (!authLoading) {
      setAuthChecked(true);
      if (!accessToken) {
        router.push("/login");
      }
    }
  }, [accessToken, authLoading, router]);

  // プロフィール情報の取得
  const { data, isLoading, error } = useMyProfile();

  useEffect(() => {
    if (data?.profile) {
      setProfile(data.profile);
    }
  }, [data]);

  // プロフィール更新時のハンドラー
  const handleProfileUpdated = (updatedProfile: UserProfile) => {
    setProfile(updatedProfile);
  };

  // 認証チェック中またはプロフィール読み込み中はローディング表示
  if (!authChecked || authLoading || (accessToken && isLoading)) {
    return (
      <Container maxWidth="md">
        <Box sx={{ display: "flex", justifyContent: "center", mt: 8 }}>
          <CircularProgress />
        </Box>
      </Container>
    );
  }

  // エラー表示
  if (error) {
    return (
      <Container maxWidth="md">
        <Box sx={{ mt: 8 }}>
          <Typography color="error">
            プロフィール情報の取得に失敗しました。再度お試しください。
          </Typography>
        </Box>
      </Container>
    );
  }

  // プロフィール表示
  return (
    <Container maxWidth="md">
      <Box sx={{ mt: 4 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          マイプロフィール
        </Typography>

        {profile && data?.email && (
          <ProfileEditView
            profile={profile}
            email={data.email}
            onProfileUpdated={handleProfileUpdated}
          />
        )}
      </Box>
    </Container>
  );
}
