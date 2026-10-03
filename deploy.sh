#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../backend"
echo '1) Login to Cloudflare if needed: npx wrangler login'
read -p 'Press Enter after login...'
if grep -q 'REPLACE_WITH_D1_DATABASE_ID' wrangler.toml; then
  echo 'Creating D1 database...'
  npx wrangler d1 create xenor-social
  echo 'Copy the database_id into backend/wrangler.toml, then rerun this script.'
  exit 0
fi
npx wrangler d1 execute xenor-social --remote --file=schema.sql
npx wrangler deploy
