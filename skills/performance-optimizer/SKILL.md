---
name: performance-optimizer
description: >-
  Analyze and optimize web application performance, Core Web Vitals (LCP, FID/INP, CLS),
  database query execution, caching mechanisms, and frontend asset delivery.
---

# Performance Optimizer Skill

## 1. Purpose
Maximize application responsiveness, minimize server response times (TTFB), eliminate rendering bottlenecks, and optimize resource consumption across the entire tech stack.

## 2. When to Use
- When page load speed is slow or exceeds Core Web Vitals thresholds.
- When database query counts or execution times are excessive (e.g., N+1 query bugs).
- Before deploying web applications to production.

## 3. Workflow
1. **Baseline Measurement**: Measure TTFB, LCP, CLS, page weight, and query count.
2. **Database & Backend Optimization**:
   - Detect and eliminate N+1 queries using eager loading (`with()`).
   - Add database indexes to frequently queried columns and foreign keys.
   - Implement query caching or in-memory caching (Redis) for heavy, repeated queries.
3. **Frontend & Asset Optimization**:
   - Convert images to modern formats (WebP/AVIF) and implement responsive `srcset`.
   - Add explicit `width` and `height` attributes to images to eliminate layout shifts (CLS).
   - Minify CSS and JS bundles, and enable Brotli/Gzip compression.
   - Defer non-critical scripts (`defer` or `async`).
4. **Verification**: Re-measure metrics and confirm targets are satisfied.

## 4. Implementation Guidelines
- Core Web Vitals targets:
  - **LCP**: <= 2.5s
  - **INP**: <= 200ms
  - **CLS**: <= 0.1
  - **TTFB**: <= 800ms
- Use database pagination (`paginate(15)`) instead of loading unbounded result sets (`all()`).

## 5. Restrictions
- Do not introduce complex caching layers if a simple database index solves the bottleneck.
- Do not compress images to the point of noticeable visual degradation.
- Do not load heavy third-party tracking scripts synchronously in `<head>`.

## 6. Testing Checklist
- [ ] Database queries optimized with zero N+1 query patterns.
- [ ] Image assets compressed, properly formatted, and lazy-loaded.
- [ ] Zero Cumulative Layout Shift (CLS <= 0.1) during page load.
- [ ] Bundle sizes minimized with tree-shaking enabled.

## 7. Completion Criteria
- Measurable performance improvements meeting Core Web Vitals benchmarks.
