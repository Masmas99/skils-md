# Rule: Zero Configuration Hell (Single-File / CDN First)

For rapid prototypes, MVPs, and vibe coding workflows, developers and clients need immediate results without getting bogged down in dependency management.

## Guidelines
1. **Immediate Browser Execution**:
   - Deliver code that can run immediately by simply opening `index.html` in a web browser or through a local server (e.g., Laragon / Live Server).
   - Leverage reliable CDNs (Tailwind CSS CDN, Alpine.js, Lucide Icons, Google Fonts) rather than requiring complex `npm install`, Node version matching, or bundler setup files.
2. **Zero Dependency Hell**:
   - Do not force the user through multi-step build configurations for simple landing pages or standalone dashboards.
   - Advance to full build-tool stacks (Vite, Webpack, Composer/Artisan) only when explicitly building complex full-stack web applications.
3. **Self-Contained Data & Logic**:
   - Embed lightweight mock data via native JavaScript objects and persist client state cleanly using `localStorage`.
