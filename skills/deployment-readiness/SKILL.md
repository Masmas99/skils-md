---
name: deployment-readiness
description: >-
  Perform pre-deployment verification, environment configuration audits, asset compilation,
  and production readiness checklists before releasing web applications.
---

# Deployment Readiness Skill

## 1. Purpose
Ensure web applications are fully verified, secure, performant, and operational before releasing them to staging or production environments.

## 2. When to Use
- Prior to launching a new website, application, or release version.
- When preparing production configuration, assets, and database migrations.
- When verifying staging environments before client handover.

## 3. Workflow
1. **Environment & Secrets Check**:
   - Verify `.env.example` contains all required configuration keys without secret values.
   - Confirm debug mode (`APP_DEBUG=false`) and error displays are disabled for production.
   - Verify HTTPS enforcement and secure cookies are configured.
2. **Build & Asset Compilation**:
   - Execute production asset build (`npm run build`). Verify zero build warnings/errors.
   - Ensure compiled assets are optimized and fingerprint-hashed.
3. **Database Migration Verification**:
   - Ensure all migrations run without error and seed data is verified.
4. **Responsive UI & Quality Gate**:
   - Confirm full compliance with the 7 responsive viewports (320px to 1920px).
   - Ensure automated test suite passes 100%.
5. **Generate Release Record**:
   - Complete `templates/change-log-template.md` and deliver release checklist.

## 4. Implementation Guidelines
- Verify caching configurations (e.g., `php artisan config:cache`, `route:cache`, `view:cache` in Laravel).
- Test error pages (404, 500) to ensure friendly, brand-consistent user messages.
- Verify health check endpoints return 200 OK.

## 5. Restrictions
- Never deploy with `APP_DEBUG=true` in a public or production environment.
- Never deploy without verifying database backup procedures.
- Never skip the final cross-device responsive verification.

## 6. Testing Checklist
- [ ] Production build succeeds cleanly (`npm run build`).
- [ ] Sensitive credentials isolated in environment variables.
- [ ] Debug mode disabled; custom 404 and 500 error pages active.
- [ ] Cross-browser and 7-viewport responsive checks passed.
- [ ] Automated test suite 100% green.

## 7. Completion Criteria
- Complete deployment sign-off verified with all production readiness checks passed.
