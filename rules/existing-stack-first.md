# Rule: Existing Stack First

Respect and strictly leverage existing project foundations. Never blindly introduce new frameworks, conflicting CSS packages, redundant libraries, or incompatible tools into an existing codebase.

## Enforcement Guidelines

### 1. Mandatory Stack Detection
- Before installing any package or generating markup, inspect:
  - PHP: `composer.json`, `artisan`, Laravel versions.
  - Node/JS: `package.json`, `pnpm-lock.yaml`, `package-lock.json`.
  - CSS/Styling: `tailwind.config.js`, Bootstrap references, custom CSS variables, Sass files.
  - Build Tools: `vite.config.js`, `webpack.mix.js`, `rollup.config.js`.

### 2. Zero Redundant Dependencies
- If Tailwind CSS is installed, do not introduce Bootstrap or inline styles.
- If Axios or native `fetch` is present, do not install conflicting HTTP libraries.
- If a UI icon library exists (e.g., Lucide, Heroicons, FontAwesome), exclusively use that library.

### 3. Convention Alignment
- Follow the existing project's naming conventions (kebab-case, camelCase, snake_case).
- Match the established directory structure (e.g., Laravel MVC vs DDD, Next.js App Router vs Pages Router).
