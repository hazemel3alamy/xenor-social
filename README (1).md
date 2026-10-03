# XENOR Real

This is the real backend + Android/frontend starter for XENOR Social.

## Backend
- Cloudflare Workers API
- Cloudflare D1 database
- Real auth sessions
- Users
- Friend requests
- Posts / likes / comments
- Messages
- Notifications
- Reports
- Admin endpoints

## Admin seed
The included `backend/admin-seed.sql` creates:
- Email: `admin@xenor.app`
- Password: `XENOR2026`
- Role: `admin`

Change the password after first login in a production deployment.

## Deploy
Run `scripts/deploy.sh` after `npx wrangler login`. The script creates the D1 database on first run; copy its returned database ID into `backend/wrangler.toml`, then rerun.

The Android project is under `android/`. A final APK requires an Android SDK/build environment; this package does not falsely label the source project as an APK.
