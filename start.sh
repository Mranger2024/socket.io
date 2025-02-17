#!/usr/bin/env bash

# Ensure we're in the right directory
cd "$(dirname "$0")"

# Install dependencies
echo "Installing dependencies..."
pnpm install

# Build TypeScript
echo "Building TypeScript..."
pnpm run build

# Start the server
echo "Starting server..."
PORT=3000 pnpm start
