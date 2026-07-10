#!/usr/bin/env bash
# Run this on the Spaceship VM inside the cloned repo directory.
# Also invoked by .github/workflows/deploy.yml over SSH on every push to main —
# the deploy user needs passwordless sudo for the specific commands below (see README).
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WEB_ROOT="/var/www/medical-scanner"

cd "$APP_DIR"

echo "==> Pulling latest code"
git pull

echo "==> Installing dependencies"
npm ci

if [ ! -f .env ]; then
  echo "ERROR: .env not found. Copy .env.example to .env and set VITE_GROQ_API_KEY first." >&2
  exit 1
fi

echo "==> Building"
npm run build

echo "==> Publishing to $WEB_ROOT"
sudo mkdir -p "$WEB_ROOT"
sudo rm -rf "$WEB_ROOT/dist"
sudo cp -r dist "$WEB_ROOT/dist"

echo "==> Reloading nginx"
sudo nginx -t
sudo systemctl reload nginx

echo "Deploy complete."
