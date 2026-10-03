# XENOR Real Backend

Cloudflare Workers + D1 API for real accounts, friend requests, posts, likes, comments, notifications, messages and admin moderation.

## Deploy
1. Create a Cloudflare D1 database named `xenor-social`.
2. Put its ID into `wrangler.toml`.
3. Run `wrangler d1 execute xenor-social --remote --file=schema.sql`.
4. Run `wrangler deploy`.
5. Set the frontend API base URL to the deployed Worker URL.

Passwords are stored as SHA-256 hashes in this starter. For production, replace with a memory-hard password KDF or Cloudflare-supported identity provider before public launch.
