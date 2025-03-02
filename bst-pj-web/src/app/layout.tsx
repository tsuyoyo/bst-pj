import React from "react";
import { Providers } from "./providers";
import Navbar from "@/components/layout/Navbar";

export const metadata = {
  title: "Next.js App",
  description: "Created with Next.js",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="ja">
      <body>
        <Providers>
          <Navbar />
          {children}
        </Providers>
      </body>
    </html>
  );
}
