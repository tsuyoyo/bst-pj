import type { Meta, StoryObj } from "@storybook/react";
import ImageUploader from "./ImageUploader";

const meta = {
  title: "Components/Common/ImageUploader",
  component: ImageUploader,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
  argTypes: {
    onUpload: { action: "uploaded" },
  },
} satisfies Meta<typeof ImageUploader>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {
    isUploading: false,
    accept: "image/jpeg, image/png, image/gif",
    maxSize: 5 * 1024 * 1024,
  },
};

export const Uploading: Story = {
  args: {
    isUploading: true,
    accept: "image/jpeg, image/png, image/gif",
    maxSize: 5 * 1024 * 1024,
  },
};

export const RestrictedFileTypes: Story = {
  args: {
    isUploading: false,
    accept: "image/jpeg, image/png",
    maxSize: 5 * 1024 * 1024,
  },
};

export const SmallMaxSize: Story = {
  args: {
    isUploading: false,
    accept: "image/jpeg, image/png, image/gif",
    maxSize: 1 * 1024 * 1024, // 1MB
  },
};
