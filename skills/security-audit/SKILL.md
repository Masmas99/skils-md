---
name: security-audit
description: >-
  Conduct comprehensive security audits, vulnerability scanning, and OWASP Top 10 remediation
  for web applications, APIs, authentication systems, and database queries.
---

# Security Audit Skill

## 1. Purpose
Identify, prevent, and remediate security vulnerabilities across application architecture, source code, authentication flows, data storage, and external communications.

## 2. When to Use
- Before launching any new feature, API route, or web application.
- When handling user authentication, role authorization, or password resets.
- When processing sensitive user inputs, payment data, or file uploads.
- During scheduled code audits or dependency updates.

## 3. Workflow
1. **Dependency Vulnerability Scan**: Run `composer audit` and `npm audit` to identify known package CVEs.
2. **Codebase Inspection**:
   - Check all raw database queries for SQL injection vulnerabilities.
   - Verify server-side input validation on every request endpoint.
   - Inspect template output for XSS escaping (e.g., verify no unescaped `{!! !!}` in Blade or `dangerouslySetInnerHTML` in React).
   - Ensure CSRF middleware is active on state-changing routes.
3. **Authentication & Session Review**:
   - Check password hashing strength (bcrypt / Argon2id).
   - Verify session fixation protections and secure cookie flags (`HttpOnly`, `Secure`, `SameSite=Lax`).
   - Validate access controls on every protected route (IDOR checks).
4. **Remediation**: Fix all discovered vulnerabilities immediately.
5. **Documentation**: Record findings and actions in `templates/security-audit-template.md`.

## 4. Implementation Guidelines
- Never rely on client-side validation alone; always re-validate and sanitize data on the server.
- Store all secrets and API keys strictly in `.env`.
- Implement rate limiting on sensitive routes (e.g., Laravel `throttle:6,1` on login).

## 5. Restrictions
- Never hardcode API keys, database passwords, or JWT secrets into source files or version control.
- Never disable CSRF protection globally as a quick fix for API or AJAX issues.
- Never display raw database errors or stack traces to end users in production.

## 6. Testing Checklist
- [ ] Dependencies scanned with zero critical or high vulnerabilities.
- [ ] Server-side input validation active on all POST/PUT/PATCH endpoints.
- [ ] Prepared statements / ORM methods used for all database queries.
- [ ] CSRF tokens validated on all state-changing requests.
- [ ] Authorization checks prevent IDOR (insecure direct object references).

## 7. Completion Criteria
- Security assessment completed with zero critical/high vulnerabilities and documented in audit template.
