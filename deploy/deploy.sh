#!/usr/bin/env bash
# Runs on the server as the "deploy" user (~/apps/Medical_scanner), which owns
# /var/www/medical-scanner and has passwordless sudo for nginx -t / reload only.
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
sudo nginx -t
sudo systemctl reload nginx

echo "Deploy complete."
