---
name: transparency-reporter
description: >-
  Document and communicate code modifications, technical rationales, breaking changes,
  and deployment summaries with complete transparency. Use during releases and task completion.
---

# Transparency Reporter Skill

## 1. Purpose
Provide clear, structured, and transparent reporting of all system modifications, architectural decisions, and release notes to keep stakeholders and developers informed.

## 2. When to Use
- At the conclusion of any development task, feature implementation, or bugfix.
- When preparing a release changelog or deployment summary.
- When architectural changes or potential breaking changes are introduced.

## 3. Workflow
1. **Collect Modifications**: Review all modified, added, and deleted files.
2. **Categorize Changes**: Group changes into standard types:
   - `Added`: New features, components, or migrations.
   - `Changed`: Updates to existing functionality, styles, or logic.
   - `Fixed`: Bug resolutions or error corrections.
   - `Security`: Security hardening or patch applications.
   - `Performance`: Speed, query, or asset optimizations.
3. **Explain Technical Rationale**: Document the *why* behind non-trivial decisions.
4. **Document Verification**: State the specific tests, responsive viewports, and security checks performed.
5. **Publish Report**: Update `templates/change-log-template.md` and present summary to user.

## 4. Implementation Guidelines
- Write concise, professional markdown reports with clear bullet points.
- Highlight any required user actions (e.g., "Run `php artisan migrate`" or "Update `.env`").
- Maintain an accurate version history.

## 5. Restrictions
- Do not gloss over breaking changes or modified configuration requirements.
- Do not provide vague summaries (e.g., "Updated various files"); specify exact files and actions.
- Do not omit the testing verification results.

## 6. Testing Checklist
- [ ] All modified, created, and deleted files cataloged.
- [ ] Technical rationale clearly articulated for each major change.
- [ ] Required configuration or migration commands listed.
- [ ] Changelog updated following `templates/change-log-template.md`.

## 7. Completion Criteria
- Clear, comprehensive, and traceable change report delivered to the user.
