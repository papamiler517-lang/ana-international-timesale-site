#!/bin/zsh
# Cloudflare Workers へ公開する。公開するのは index.html だけ
set -euo pipefail
cd "$(dirname "$0")"
rm -rf dist && mkdir dist
cp index.html dist/
cp .headers.cloudflare dist/_headers
npx --no-install wrangler deploy "$@"
