# 共通コンポーネント

このディレクトリには、アプリケーション全体で再利用可能な共通コンポーネントが含まれています。

## コンポーネント一覧

- `ImageUploader`: 画像アップロード用のコンポーネント

## Storybook でのプレビュー

各コンポーネントは Storybook を使用してプレビューできます。Storybook を起動するには、プロジェクトのルートディレクトリで以下のコマンドを実行してください：

```bash
npm run storybook
```

ブラウザが自動的に開き、`http://localhost:6006`で Storybook が表示されます。

## 使用方法

### ImageUploader

画像ファイルを選択してアップロードするためのコンポーネントです。

```tsx
import ImageUploader from "@/components/common/ImageUploader";

// 使用例
const handleUpload = async (file: File): Promise<void> => {
  // ファイルのアップロード処理
  console.log("Uploading file:", file.name);
};

<ImageUploader
  onUpload={handleUpload}
  isUploading={false}
  accept="image/jpeg, image/png"
  maxSize={2 * 1024 * 1024} // 2MB
/>;
```

#### Props

| プロパティ名 | 型                            | 必須 | デフォルト値                       | 説明                                               |
| ------------ | ----------------------------- | ---- | ---------------------------------- | -------------------------------------------------- |
| onUpload     | (file: File) => Promise<void> | ✅   | -                                  | ファイルがアップロードされたときに呼び出される関数 |
| isUploading  | boolean                       | ✅   | -                                  | アップロード中かどうかを示すフラグ                 |
| accept       | string                        | ❌   | "image/jpeg, image/png, image/gif" | 受け入れるファイル形式（MIME type）                |
| maxSize      | number                        | ❌   | 5 _ 1024 _ 1024 (5MB)              | 最大ファイルサイズ（バイト単位）                   |

```

```
