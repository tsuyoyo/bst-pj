import React from "react";
import { render, screen, fireEvent, waitFor } from "@testing-library/react";
import ImageUploader from "./ImageUploader";

describe("ImageUploader", () => {
  const mockOnUpload = jest.fn().mockResolvedValue(undefined);

  beforeEach(() => {
    jest.clearAllMocks();
  });

  it("renders upload button correctly", () => {
    render(<ImageUploader onUpload={mockOnUpload} isUploading={false} />);

    expect(screen.getByRole("button")).toBeInTheDocument();
  });

  it("shows loading state when uploading", () => {
    render(<ImageUploader onUpload={mockOnUpload} isUploading={true} />);

    expect(screen.getByRole("button")).toBeDisabled();
  });

  it("calls onUpload when file is selected", async () => {
    render(<ImageUploader onUpload={mockOnUpload} isUploading={false} />);

    const file = new File(["dummy content"], "test.jpg", {
      type: "image/jpeg",
    });
    const input = document.querySelector(
      'input[type="file"]'
    ) as HTMLInputElement;

    // ファイル選択をシミュレート
    Object.defineProperty(input, "files", {
      value: [file],
    });

    fireEvent.change(input);

    await waitFor(() => {
      expect(mockOnUpload).toHaveBeenCalledWith(file);
    });
  });

  it("shows error when file size exceeds max size", async () => {
    render(
      <ImageUploader
        onUpload={mockOnUpload}
        isUploading={false}
        maxSize={100} // 100 bytes
      />
    );

    // 101バイトのファイルを作成
    const largeFile = new File(["a".repeat(101)], "large.jpg", {
      type: "image/jpeg",
    });
    const input = document.querySelector(
      'input[type="file"]'
    ) as HTMLInputElement;

    Object.defineProperty(input, "files", {
      value: [largeFile],
    });

    fireEvent.change(input);

    await waitFor(() => {
      expect(
        screen.getByText(/ファイルサイズが大きすぎます/)
      ).toBeInTheDocument();
    });
    expect(mockOnUpload).not.toHaveBeenCalled();
  });

  it("shows error when file type is not accepted", async () => {
    render(
      <ImageUploader
        onUpload={mockOnUpload}
        isUploading={false}
        accept="image/jpeg"
      />
    );

    const pngFile = new File(["dummy content"], "test.png", {
      type: "image/png",
    });
    const input = document.querySelector(
      'input[type="file"]'
    ) as HTMLInputElement;

    Object.defineProperty(input, "files", {
      value: [pngFile],
    });

    fireEvent.change(input);

    await waitFor(() => {
      expect(
        screen.getByText(/サポートされていないファイル形式です/)
      ).toBeInTheDocument();
    });
    expect(mockOnUpload).not.toHaveBeenCalled();
  });
});
