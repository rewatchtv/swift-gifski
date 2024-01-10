#!/bin/bash

set -e

OUTPUT_PATH=Gifski.xcframework
BUILD_DIR=build

rm -rf $BUILD_DIR
rm -rf $OUTPUT_PATH

# Build gifski.dylib
echo "Building gifsky.dylib..."
xcodebuild clean build \
  -project gifski/gifski.xcodeproj \
  -scheme gifski-cdylib \
  -configuration Release \
  -derivedDataPath $BUILD_DIR \
  -quiet \
  CODE_SIGNING_ALLOWED=NO \
  MACOSX_DEPLOYMENT_TARGET=12.0

# Fix dylib install name
echo "Fixing dylib install name..."
install_name_tool -id @rpath/gifski.dylib build/Build/Products/Release/gifski.dylib

# Code sign dylib
echo "Signing dylib..."
codesign --timestamp -s "Apple Development" -f build/Build/Products/Release/gifski.dylib

# Create XCFramework
echo "Creating XCFramework..."
xcodebuild -create-xcframework -library build/Build/Products/Release/gifski.dylib -headers include -output $OUTPUT_PATH 

# Zip file
echo "Zipping output..."
ditto -c -k --sequesterRsrc --keepParent $OUTPUT_PATH $OUTPUT_PATH.zip

echo "done!"

