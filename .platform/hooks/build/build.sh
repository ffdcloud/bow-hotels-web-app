#!/bin/bash

APP_DIR="./"
BUILD_FILENAME="build"
BUILD_OUTPUT="$APP_DIR/bin/$BUILD_FILENAME"

cd $APP_DIR

# Build the Go binary
echo "Building the Go application..."
go build -o $BUILD_OUTPUT
chmod +x $BUILD_OUTPUT

# Stop the existing application (if running)
pkill $BUILD_FILENAME || true

echo "Deployment complete!"




