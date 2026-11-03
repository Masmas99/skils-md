---
name: stack-detector
description: >-
  Inspect, detect, and analyze existing project tech stacks, frameworks, dependencies, and styling
  systems before introducing new code. Use when onboarding into a project or before adding packages.
---

# Stack Detector Skill

## 1. Purpose
Ensure strict adherence to the "Existing Stack First" principle by identifying all languages, frameworks, UI libraries, build tools, and database connections already present in the workspace.

## 2. When to Use
- Immediately upon entering any existing codebase or workspace.
- Before installing any new npm, composer, or pip package.
- Before writing CSS or frontend components to identify the existing styling convention.

## 3. Workflow
1. **Manifest Inspection**:
   - Check for PHP/Laravel: `composer.json`, `artisan`, `app/`, `config/`.
   - Check for Node/Frontend: `package.json`, lockfiles (`pnpm-lock.yaml`, `package-lock.json`).
   - Check for Python/other: `requirements.txt`, `pyproject.toml`.
2. **Styling & UI Detection**: Inspect `tailwind.config.js`, Bootstrap references, CSS variables, Sass files, or component libraries.
3. **Build Tool & Bundler Analysis**: Identify `vite.config.js`, `webpack.mix.js`, or `rollup.config.js`.
4. **Database & Environment Analysis**: Inspect `.env.example`, database migrations, and connection drivers.
5. **Formulate Stack Profile**: Document detected stack and enforce usage of existing tools exclusively.

## 4. Implementation Guidelines
- If Tailwind CSS is present, all new UI code must use standard Tailwind utility classes.
- If Laravel Blade is present, utilize Blade components (`<x-layout>`) rather than inventing custom template wrappers.
- If Alpine.js, Vue, or React is present, implement interactive state using that existing library.

## 5. Restrictions
- Never install redundant libraries (e.g., do not add jQuery if Alpine or native JS is used; do not install Axios if `fetch` is standard).
- Never mix conflicting CSS frameworks (e.g., adding Bootstrap classes to a Tailwind project).
- Never upgrade major package versions without explicit confirmation.

## 6. Testing Checklist
- [ ] Package manifests inspected (`composer.json`, `package.json`).
- [ ] Styling framework and design tokens identified.
- [ ] Build script (`npm run build` or `npm run dev`) verified.
- [ ] Stack profile documented in the technical architecture document.

## 7. Completion Criteria
- Complete stack profile compiled with zero conflicting or redundant packages proposed.
