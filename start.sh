#!/bin/bash
export NODE_VERSION=16.20.0
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install $NODE_VERSION
nvm use $NODE_VERSION

# Install dependencies and start the server
pnpm install
pnpm run build
PORT=3000 node dist/index.js
