"use client";

import { useRouter } from "next/navigation";
import { useSelector } from "react-redux";
import { RootState } from "@/store/store";
import {
  ArrowRightIcon,
  Bars3Icon,
  UserCircleIcon,
  XMarkIcon,
} from "@heroicons/react/24/outline";
import { Typography } from "@mui/material";

export default function Home() {
  const router = useRouter();
  const { user } = useSelector((state: RootState) => state.auth);

  return (
    <div className="page-container" style={{ backgroundColor: "lightblue" }}>
      <Typography variant="body1">
        これは本文のテキストです。ここに内容を追加します。
      </Typography>
      <div style={{ flexDirection: "column" }}>
        <Typography
          style={{ fontSize: "16px", flex: 1 }}
          variant="body1"
          color="black"
        >
          テスト1
        </Typography>
        <Typography
          style={{ fontSize: "16px", flex: 1 }}
          variant="body1"
          color="black"
        >
          テスト2
        </Typography>
        <Typography
          style={{ fontSize: "16px", flex: 1 }}
          variant="body1"
          color="black"
        >
          テスト3
        </Typography>
      </div>
    </div>
  );
}
