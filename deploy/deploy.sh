#!/usr/bin/env bash
# Runs on the server at /root/apps/Medical_scanner (root user, no sudo needed).
# Invoked by .github/workflows/deploy.yml over SSH on every push to main.
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WEB_ROOT="/var/www/medical-scanner"

cd "$APP_DIR"

echo "==> Pulling latest code"
git fetch && git reset --hard origin/main

echo "==> Installing dependencies"
npm ci

if [ ! -f .env ]; then
  echo "ERROR: .env not found. Copy .env.example to .env and set VITE_GROQ_API_KEY first." >&2
  exit 1
fi

echo "==> Building"
npm run build

echo "==> Publishing to $WEB_ROOT"
mkdir -p "$WEB_ROOT"
rm -rf "$WEB_ROOT/dist"
cp -r dist "$WEB_ROOT/dist"

echo "==> Reloading nginx"
nginx -t
systemctl reload nginx

echo "Deploy complete."
