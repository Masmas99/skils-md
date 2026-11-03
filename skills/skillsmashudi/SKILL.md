---
name: skillsmashudi
description: >-
  Master orchestrator skill for the Masmas Development System. Triggered via /skillsmashudi.
  Use whenever starting to build, architect, or scaffold any website or web application following
  clean code, strictly essential icons, 1-color discipline, and mandatory 7-viewport responsive design.
---

# /skillsmashudi — Masmas Development System Master Skill

## 1. Purpose
Act as the primary command and master orchestrator for the **Masmas Development System**. When invoked via `/skillsmashudi`, this skill immediately initializes autonomous development: verifies existing stack, asks for color preference, constructs clean responsive UI (no decorative icons, no rainbow colors, 7 viewports), runs tests, and **automatically deletes all temporary test/checklist files** upon completion.

## 2. When to Use
- Whenever the user invokes `/skillsmashudi` in the chat input.
- At the start of building any new website, web application, or web page.
- When scaffolding new features, dashboards, or portals under the Masmas Development System standards.

## 3. Workflow
When `/skillsmashudi` is triggered, execute the following 5-phase streamlined pipeline:

1. **Phase 1: Environment & Stack Inspection**
   - Run [`stack-detector`](../stack-detector/SKILL.md) to inspect `package.json`, `composer.json`, and styling configurations.
   - Enforce the "Existing Stack First" principle. Do not introduce redundant packages.
   - **NO PRD**: Do not generate PRD documents (`PRD.md`) unless explicitly asked by the user.

2. **Phase 2: Color Consultation & Architecture Planning**
   - **Mandatory Color Check**: Ask the user what primary brand color and theme (Light/Dark mode) they want before styling.
   - Plan data schema and API endpoints directly and cleanly.

3. **Phase 3: Data & API Modeling**
   - If backend is needed, invoke [`database-architect`](../database-architect/SKILL.md) for migrations and schema design.
   - Design standardized RESTful/AJAX endpoints using [`api-design`](../api-design/SKILL.md).

4. **Phase 4: Clean UI Construction & 7-Viewport Responsive Mandate (HIGHEST PRIORITY)**
   - **Strictly Essential Icons Only**: Use icons ONLY where genuinely required for functional clarity (e.g., dashboard metrics, search, close button). Never use decorative icons on text, cards, or headings.
   - **Zero Rainbow Clutter**: Restrict palette to 1 primary brand color + neutral grays.
   - Enforce [`responsive-design`](../responsive-design/SKILL.md) across all 7 mandatory viewports:
     - `320px` (Small Mobile / iPhone SE) — Zero horizontal scroll, touch target >= 44x44px.
     - `375px` (Standard Mobile) — Fluid single-column layout.
     - `430px` (Large Mobile) — Effective width usage without voids.
     - `768px` (Tablet Portrait) — 2-column cards, responsive tables.
     - `1024px` (Laptop) — Desktop navbars, 3-4 column metric grids.
     - `1440px` (Desktop) — Centered container (`max-w-7xl`), multi-column forms.
     - `1920px+` (Ultrawide) — Centered content with balanced margins.

5. **Phase 5: Testing & Mandatory Workspace Cleanup (Zero Residue)**
   - Run automated logic and endpoint verification.
   - Verify zero horizontal overflow across all 7 viewports.
   - **MANDATORY CLEANUP**: Automatically delete all temporary test reports, checklists, and changelog files (e.g. `TEST_REPORT.md`, `RESPONSIVE_CHECKLIST.md`, `CHANGELOG.md`, `TEST_PLAN.md`). Leave the project directory clean and pristine!
   - Report verification and changes directly in the chat response.

## 4. Implementation Guidelines
- Operates autonomously and directly: proceed straight to building without creating unwanted PRD files.
- Strictly enforce 1 primary color and strictly essential icons only.
- Always clean up temporary test files upon completion.

## 5. Restrictions
- Do NOT generate `PRD.md` unless explicitly requested.
- STRICTLY FORBIDDEN from creating colorful, rainbow, or multi-colored cluttered interfaces.
- MANDATORY: Always ask the user for their preferred primary color and theme before applying styles.
- STRICTLY FORBIDDEN from using non-essential or decorative icons.
- STRICTLY FORBIDDEN from generating generic floating hero pill badges (e.g., *"Tersedia untuk Proyek Baru & Konsultasi"*, *"Available for hire"*).
- MANDATORY: Delete all temporary test files (`TEST_REPORT.md`, `RESPONSIVE_CHECKLIST.md`, `CHANGELOG.md`) after testing.

## 6. Testing Checklist
- [ ] Existing project stack detected and respected.
- [ ] No unwanted `PRD.md` created.
- [ ] User's color preference confirmed (single primary color + neutrals).
- [ ] Zero decorative icons used (icons strictly for dashboards/actions).
- [ ] UI verified on 320px, 375px, 430px, 768px, 1024px, 1440px, and 1920px viewports.
- [ ] All temporary test and changelog files deleted from workspace.

## 7. Completion Criteria
- Clean, responsive website delivered with 1 primary color, essential icons only, zero horizontal overflow, and pristine workspace (no residue files).
