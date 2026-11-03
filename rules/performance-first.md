# Rule: Performance First

Speed, responsiveness, and minimal resource consumption are essential design criteria. Fast sites deliver superior user experiences and conversion rates.

## Performance Metrics & Goals

### 1. Core Web Vitals Targets
- **Largest Contentful Paint (LCP)**: <= 2.5 seconds.
- **First Input Delay (FID) / Interaction to Next Paint (INP)**: <= 200 milliseconds.
- **Cumulative Layout Shift (CLS)**: <= 0.1 (zero layout jumping).
- **Time to First Byte (TTFB)**: <= 800 milliseconds.

### 2. Asset & Asset Pipeline Optimization
- Compress and convert images to modern formats (WebP, AVIF).
- Implement responsive images (`srcset`) and native lazy loading (`loading="lazy"`).
- Minify CSS and JavaScript bundles. Eliminate unused dependencies and tree-shake libraries.
- Avoid large render-blocking scripts in the `<head>` tag. Use `defer` or `async`.

### 3. Database & Query Optimization
- Eliminate N+1 query problems using eager loading (e.g., `with()` in Eloquent).
- Index frequently queried database columns (foreign keys, search columns, status fields).
- Implement caching (Redis, in-memory, or HTTP cache headers) for heavy, read-mostly data.
