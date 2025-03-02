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
      {/*
      Important: This is a temporary solution to avoid hydration errors.
      It should be re-considered when the app is deployed to miss hydration errors.
      https://nextjs.org/docs/messages/react-hydration-error
       */}
      <body suppressHydrationWarning>
        <Providers>
          <Navbar />
          {children}
        </Providers>
      </body>
    </html>
  );
}
