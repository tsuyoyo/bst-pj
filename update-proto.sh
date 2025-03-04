#!/bin/zsh
cd bst-pj-proto
npm run generate

# !! Note: This is a temporary patch to fix the runtime error !!
# Apply patch to timestamp.ts to fix the error
PATCH_LINE=216
TARGET_FILE="gen/ts/google/protobuf/timestamp.ts"
echo "Applying workaround patch to $TARGET_FILE at line $PATCH_LINE"
sed -i '' "${PATCH_LINE}s/.*/if (_m0 \&\& _m0.util \&\& _m0.util.Long !== Long) \{/" $TARGET_FILE

cd ../bst-pj-api
npm run copy:proto
cd ../bst-pj-web
npm run copy:proto

