#!/usr/bin/env bash

CURPATH=$(pwd)
TARGET_CLASSES_PATH="target/classes/lib/freebsd-aarch64"
TARGET_PATH="target"

function exitWithError() {
  cd ${CURPATH}
  echo "*** An error occurred. Please check log messages. ***"
  exit $1
}

mkdir -p "$TARGET_CLASSES_PATH"

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> HERE HERE HERE HERE HERE HERE HERE"

cd "$TARGET_PATH"
cmake ../../../ || exitWithError $?
make || exitWithError $?
rm -f "$CURPATH/${TARGET_CLASSES_PATH}/libbrotli.so"
cp "./libbrotli.so" "$CURPATH/${TARGET_CLASSES_PATH}" || exitWithError $?

cd "${CURPATH}"
