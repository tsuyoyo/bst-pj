#!/bin/zsh
cd bst-pj-proto
npm run generate
cd ../bst-pj-api
npm run copy:proto

# !! Note: This is a temporary patch to fix the runtime error !!
# Apply patch to timestamp.ts to fix the error
echo "Applying workaround patch to $TARGET_FILE at line $PATCH_LINE"
PATCH_LINE=216
TARGET_FILE="src/proto/google/protobuf/timestamp.ts"
sed -i '' "${PATCH_LINE}s/.*/if (_m0 \&\& _m0.util \&\& _m0.util.Long !== Long) \{/" "$TARGET_FILE"

