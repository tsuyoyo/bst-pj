"use client";

import { useLogout } from "@/features/auth/hooks";
import { RootState } from "@/store/store";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";
import { useSelector } from "react-redux";
import {
  AppBar,
  Box,
  CssBaseline,
  Drawer,
  IconButton,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  Toolbar,
  Typography,
  Avatar,
  useMediaQuery,
} from "@mui/material";
import { useTheme } from "@mui/material/styles";
import {
  Menu as MenuIcon,
  Home as HomeIcon,
  Folder as FolderIcon,
  Settings as SettingsIcon,
  Person as PersonIcon,
  Close as CloseIcon,
} from "@mui/icons-material";

const navigation = [
  { name: "ホーム", href: "/", icon: HomeIcon },
  { name: "プロジェクト", href: "/projects", icon: FolderIcon },
  { name: "設定", href: "/settings", icon: SettingsIcon },
];

const DRAWER_WIDTH = 240;

// ハンバーガーメニューボタン
function HamburgerButton({ onClick }: { onClick: () => void }) {
  return (
    <IconButton
      color="inherit"
      aria-label="open drawer"
      edge="start"
      onClick={onClick}
      sx={{ mr: 2 }}
    >
      <MenuIcon />
    </IconButton>
  );
}

// ナビゲーションリンク
function NavigationLinks({
  pathname,
  onNavigate,
}: {
  pathname: string;
  onNavigate: () => void;
}) {
  return (
    <List>
      {navigation.map((item) => {
        const Icon = item.icon;
        return (
          <ListItem key={item.name} disablePadding>
            <ListItemButton
              component={Link}
              href={item.href}
              selected={pathname === item.href}
              onClick={onNavigate}
            >
              <ListItemIcon>
                <Icon />
              </ListItemIcon>
              <ListItemText primary={item.name} />
            </ListItemButton>
          </ListItem>
        );
      })}
    </List>
  );
}

// ユーザー情報セクション
function UserSection({ user }: { user: any }) {
  return (
    <Box sx={{ display: "flex", alignItems: "center", gap: 2, p: 1 }}>
      <Avatar>
        <PersonIcon />
      </Avatar>
      <Typography variant="body2">{user.name}</Typography>
    </Box>
  );
}

// Drawerヘッダー（閉じるボタン付き）
function DrawerHeader({ onClose }: { onClose: () => void }) {
  return (
    <Box
      sx={{
        display: "flex",
        alignItems: "center",
        justifyContent: "flex-end",
        padding: 1,
        // 必要に応じてスタイルを追加
      }}
    >
      <IconButton onClick={onClose}>
        <CloseIcon />
      </IconButton>
    </Box>
  );
}

export default function Navbar() {
  const { user } = useSelector((state: RootState) => state.auth);
  const pathname = usePathname();
  const { mutate: logout } = useLogout();
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  const handleDrawerToggle = () => {
    setIsDrawerOpen(!isDrawerOpen);
  };

  const drawer = (
    <Box sx={{ height: "100%", display: "flex", flexDirection: "column" }}>
      <DrawerHeader onClose={() => setIsDrawerOpen(false)} />
      <NavigationLinks
        pathname={pathname}
        onNavigate={() => {
          if (isMobile) setIsDrawerOpen(false);
        }}
      />
      <Box sx={{ flexGrow: 1 }} />
      <List>
        <ListItem>
          {user ? (
            <UserSection user={user} />
          ) : (
            <ListItemButton
              component={Link}
              href="/login"
              onClick={() => {
                if (isMobile) setIsDrawerOpen(false);
              }}
            >
              <ListItemText primary="ログインまたは新規登録" />
            </ListItemButton>
          )}
        </ListItem>
      </List>
    </Box>
  );

  const appBarHeight = "4rem";

  return (
    <Box sx={{ display: "flex" }}>
      <CssBaseline />
      <AppBar
        position="fixed"
        sx={{
          width: "100%", // 画面横いっぱいに表示
          zIndex: 1100, // 固定値を使用
          height: appBarHeight,
        }}
      >
        <Toolbar>
          <HamburgerButton onClick={handleDrawerToggle} />
          <Typography variant="h6" noWrap component="div">
            ジョニー
          </Typography>
        </Toolbar>
      </AppBar>
      <Box component="nav">
        {/* 統一されたドロワー */}
        <Drawer
          variant={isMobile ? "temporary" : "temporary"} // デスクトップでも一時的に表示
          open={isDrawerOpen}
          onClose={handleDrawerToggle}
          ModalProps={{
            keepMounted: true, // モバイルでのパフォーマンス向上
          }}
          sx={{
            zIndex: 1200, // AppBarより高い値を設定
            "& .MuiDrawer-paper": {
              boxSizing: "border-box",
              width: DRAWER_WIDTH,
              zIndex: 1200, // AppBarより高い値を設定
            },
          }}
        >
          {drawer}
        </Drawer>
      </Box>
      <Box
        component="main"
        sx={{
          flexGrow: 1,
          pt: appBarHeight,
          width: "100%", // 画面横いっぱいに表示
        }}
      >
        {/* メインコンテンツはここに入ります */}
      </Box>
    </Box>
  );
}
