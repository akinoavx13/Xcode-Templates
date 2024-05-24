#!/bin/bash

BASE_XCODE_DIR="${HOME}/Library/Developer/Xcode"

### SNIPPETS ###

USER_DATA_XCODE_DIR="${BASE_XCODE_DIR}/UserData"
CODE_SNIPPETS_XCODE_DIR="${USER_DATA_XCODE_DIR}/CodeSnippets"
SNIPPETS_FOLDER_NAME="Snippets"

echo "Starting installation of Snippets."

# Check if user data dir exists
if [ ! -d "${USER_DATA_XCODE_DIR}" ]; then
  echo "Creating UserData directory, because it didn't exist."
  mkdir "${USER_DATA_XCODE_DIR}"
fi

# Check if code snippets dir exists
if [ ! -d "${CODE_SNIPPETS_XCODE_DIR}" ]; then
  echo "Creating CodeSnippets directory, because it didn't exist."
  mkdir "${CODE_SNIPPETS_XCODE_DIR}"
fi

# Copy the files
echo "Copying Snippets files."
cp -r "${SNIPPETS_FOLDER_NAME}/." "${CODE_SNIPPETS_XCODE_DIR}/"
echo "Snippets installation done."

