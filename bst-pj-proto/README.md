# BST (Band Session Tool) Project Protocol Buffers

This directory contains Protocol Buffers and gRPC definitions for the BST Project.

## Setup

### Required Tools

1. Protocol Buffers Compiler (protoc)

```bash
# macOS
brew install protobuf

# Ubuntu
sudo apt-get install protobuf-compiler
```

2. Protocol Buffers Plugin for Dart

```bash
dart pub global activate protoc_plugin
```

3. Install Node.js Dependencies

```bash
npm install
```

### Code Generation

```bash
npm run generate
```

This will generate:

- Code for TypeScript (`./gen/ts/`)
- Code for Dart (`./gen/dart/`)

## Directory Structure

```
bst-pj-proto/
├── proto/          # Protocol Buffers definition files
├── gen/            # Generated code
│   ├── ts/        # For TypeScript
│   └── dart/      # For Dart
└── package.json    # Node.js configuration
```

## Usage

1. Edit proto files in the `proto/` directory
2. Run `npm run generate` to generate code
3. Use the generated code in your projects

## Formatting

(Only for macOS / first time)

```bash
brew install clang-format
```

```bash
npm run format
```
