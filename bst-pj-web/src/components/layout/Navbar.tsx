"use client";

import { useLogout } from "@/features/auth/hooks";
import { RootState } from "@/store/store";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useState, useEffect } from "react";
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
  Button,
  Divider,
} from "@mui/material";
import { useTheme } from "@mui/material/styles";
import {
  Menu as MenuIcon,
  Home as HomeIcon,
  Folder as FolderIcon,
  Settings as SettingsIcon,
  Person as PersonIcon,
  Close as CloseIcon,
  Logout as LogoutIcon,
  People as PeopleIcon,
} from "@mui/icons-material";

const navigation = [
  { name: "ホーム", href: "/", icon: HomeIcon },
  { name: "プロジェクト", href: "/projects", icon: FolderIcon },
  { name: "コミュニティ", href: "/community", icon: PeopleIcon },
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
  onNavigate: (href: string) => void;
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
              onClick={() => onNavigate(item.href)}
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

// ユーザー情報セクション（Drawer用）
function UserSection({
  user,
  onNavigate,
}: {
  user: any;
  onNavigate: (href: string) => void;
}) {
  // クライアントサイドのみでレンダリングするために、useEffectでマウント状態を確認
  const [isMounted, setIsMounted] = useState(false);

  useEffect(() => {
    setIsMounted(true);
  }, []);

  // サーバーサイドレンダリング時は空のコンテナを返す
  if (!isMounted) {
    return <Box sx={{ minHeight: "40px" }} />;
  }

  return user ? (
    <Box
      sx={{
        display: "flex",
        alignItems: "center",
        gap: 2,
        p: 1,
        cursor: "pointer",
        borderRadius: 1,
        "&:hover": {
          bgcolor: "rgba(0, 0, 0, 0.04)",
        },
      }}
      onClick={() => onNavigate("/my-profile")}
    >
      <Avatar
        src={user.icon || undefined}
        alt={user.name || "ユーザー"}
        sx={{
          width: 40,
          height: 40,
          bgcolor: user.icon ? "transparent" : "primary.main",
        }}
      >
        {!user.icon && <PersonIcon />}
      </Avatar>
      <Box>
        <Typography variant="body2">{user.name}</Typography>
        <Typography variant="caption" color="text.secondary">
          マイプロフィールを表示
        </Typography>
      </Box>
    </Box>
  ) : (
    <ListItemButton
      component={Link}
      href="/login"
      onClick={() => onNavigate("/login")}
    >
      <ListItemText primary="ログインまたは新規登録" />
    </ListItemButton>
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
  const router = useRouter();
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  // クライアントサイドのみでレンダリングするために、useEffectでマウント状態を確認
  const [isMounted, setIsMounted] = useState(false);

  // Drawerを閉じる関数
  const closeDrawer = () => {
    setIsDrawerOpen(false);
  };

  // useLogoutフックにcloseDrawer関数を渡す
  const { mutate: logout } = useLogout(closeDrawer);

  useEffect(() => {
    setIsMounted(true);
  }, []);

  useEffect(() => {
    setIsDrawerOpen(false);
  }, [pathname]);

  const handleDrawerToggle = () => {
    setIsDrawerOpen(!isDrawerOpen);
  };

  const handleNavigate = (href: string) => {
    setIsDrawerOpen(false);
  };

  const handleLogout = () => {
    logout();
    // closeDrawerはuseLogoutフック内で呼び出されるので、ここでは不要
  };

  const drawer = (
    <Box sx={{ height: "100%", display: "flex", flexDirection: "column" }}>
      <DrawerHeader onClose={() => setIsDrawerOpen(false)} />
      <NavigationLinks pathname={pathname} onNavigate={handleNavigate} />
      <Box sx={{ flexGrow: 1 }} />
      <List>
        <ListItem>
          <UserSection
            user={isMounted ? user : null}
            onNavigate={(href) => {
              if (href === "/my-profile") {
                router.push(href);
              } else {
                handleLogout();
              }
            }}
          />
        </ListItem>
        {isMounted && user && (
          <>
            <Divider />
            <ListItem disablePadding>
              <ListItemButton
                component={Link}
                href="/my-profile"
                onClick={() => handleNavigate("/my-profile")}
              >
                <ListItemIcon>
                  <PersonIcon />
                </ListItemIcon>
                <ListItemText primary="マイプロフィール" />
              </ListItemButton>
            </ListItem>
            <ListItem disablePadding>
              <ListItemButton onClick={handleLogout}>
                <ListItemIcon>
                  <LogoutIcon />
                </ListItemIcon>
                <ListItemText primary="ログアウト" />
              </ListItemButton>
            </ListItem>
          </>
        )}
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
          width: "100%",
          zIndex: 1100,
          height: appBarHeight,
        }}
      >
        <Toolbar sx={{ display: "flex", justifyContent: "space-between" }}>
          <Box sx={{ display: "flex", alignItems: "center" }}>
            <HamburgerButton onClick={handleDrawerToggle} />
            <Typography variant="h6" noWrap component="div">
              ジョニー
            </Typography>
          </Box>
          {isMounted ? (
            <UserSection
              user={user}
              onNavigate={(href) => {
                if (href === "/my-profile") {
                  router.push(href);
                } else {
                  handleLogout();
                }
              }}
            />
          ) : (
            <Box sx={{ minHeight: "40px", minWidth: "40px" }} />
          )}
        </Toolbar>
      </AppBar>
      <Box component="nav">
        <Drawer
          variant={isMobile ? "temporary" : "temporary"}
          open={isDrawerOpen}
          onClose={handleDrawerToggle}
          ModalProps={{
            keepMounted: true,
          }}
          sx={{
            zIndex: 1200,
            "& .MuiDrawer-paper": {
              boxSizing: "border-box",
              width: DRAWER_WIDTH,
              zIndex: 1200,
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
          width: "100%",
        }}
      >
        {/* メインコンテンツはここに入ります */}
      </Box>
    </Box>
  );
}
