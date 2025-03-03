import { useEffect, useState } from "react";
import { Box } from "@mui/material";

const Navbar = ({ children }) => {
  // クライアントサイドでのみレンダリングするための状態
  const [isMounted, setIsMounted] = useState(false);

  useEffect(() => {
    // クライアントサイドでマウント後に状態を更新
    setIsMounted(true);
  }, []);

  // サーバーサイドレンダリング時は最小限の内容を返す
  if (!isMounted) {
    return (
      <Box sx={{ display: "flex" }}>
        <div className="navbar-placeholder"></div>
        <Box component="main" sx={{ flexGrow: 1, p: 3 }}>
          {children}
        </Box>
      </Box>
    );
  }

  // 以下は元のNavbarコンポーネントの内容
  return (
    <Box sx={{ display: "flex" }}>
      {/* 元のNavbarの内容 */}
      <Box component="main" sx={{ flexGrow: 1, p: 3 }}>
        {children}
      </Box>
    </Box>
  );
};

export default Navbar;
