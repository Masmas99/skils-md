# Rule: Responsive Design (HIGHEST PRIORITY)

All user interfaces, websites, dashboards, and web applications built under the Masmas Development System must be completely responsive across all standard and edge-case device viewports. Responsive design is a non-negotiable core requirement, not an afterthought.

## Mandatory Viewport Support Matrix

Every layout, component, and page must be designed and verified across these 7 distinct viewports:

1. **Small Mobile (320px)**: Compact phones (e.g., iPhone SE, legacy devices). Minimum supported baseline.
2. **Standard Mobile (375px)**: Modern standard smartphones (e.g., iPhone 13/14/15 Mini, Pixel).
3. **Large Mobile (430px)**: Max/Plus smartphones (e.g., iPhone Pro Max, Samsung Galaxy Ultra).
4. **Tablet Portrait & Small Screens (768px)**: Standard iPads, small tablets.
5. **Laptop & Tablet Landscape (1024px)**: Standard laptops, iPad Pro landscape, desktop minimum.
6. **Desktop Display (1440px)**: Standard wide monitors, modern workstations.
7. **Large Desktop & Ultrawide (1920px+)**: Full HD, 2K/4K displays, ultrawide monitors.

## Core Directives & Architectural Constraints

### 1. Absolute Zero Horizontal Overflow
- Horizontal scrollbars (`overflow-x: scroll` or inadvertent viewport blowout) are strictly prohibited on any page, modal, or drawer.
- Avoid fixed pixel widths (`width: 600px`). Always prefer fluid values (`max-width: 100%`, `width: 100%`, `clamp()`, or percentage/fractional units).
- Form inputs, code blocks, tables, and images must dynamically constrain within their container bounds.

### 2. Navigation Architecture
- **Mobile (< 768px)**: Standard horizontal navigation bars must automatically collapse into an accessible drawer, off-canvas menu, or bottom navigation bar.
- **Desktop (>= 1024px)**: Persistent sidebar or full top navigation with clear active states and drop-down menus.
- Navigation transitions must be hardware-accelerated (`transform`, `opacity`) without layout shifts (CLS = 0).

### 3. Responsive Dashboards & Grid Systems
- Use CSS Grid with `repeat(auto-fit, minmax(..., 1fr))` or Flexbox with `flex-wrap: wrap`.
- 4-column desktop dashboard cards must collapse to 2 columns on tablet (768px) and 1 column on mobile (< 768px).
- Data widgets must maintain proportional spacing and avoid text clipping or overlap.

### 4. Responsive Data Tables
- Complex tables must never break mobile screens.
- Use responsive wrappers (`overflow-x: auto` with clear scroll indicators), stacked key-value cards on mobile, or column prioritization hiding secondary metadata on small viewports.

### 5. Forms, Cards, and Modals
- Form layouts must transform from multi-column rows on desktop to single-column stacked rows on mobile.
- Modals must scale gracefully: full-screen or bottom-sheet on mobile (< 640px), centered dialogs with max-width and internal scrolling on desktop.
- Form inputs, buttons, and clickable controls must have a minimum touch target size of **44x44px** on touch devices.

### 6. Fluid Typography & Spacing
- Use modern CSS `clamp()` functions or tiered responsive classes (e.g., Tailwind `text-base md:text-lg lg:text-2xl`) to ensure headers and body text remain readable on small screens without dominating the viewport.
- Maintain a comfortable reading measure (45-75 characters per line for body copy).

### 7. Responsive Media & Assets
- All images must use `max-width: 100%; height: auto; display: block;` or CSS `object-fit: cover`.
- Provide responsive image formats (`<picture>`, `srcset`, `sizes`) and explicit `width`/`height` attributes to eliminate Cumulative Layout Shift (CLS).
- Embeds (YouTube, iframes, maps) must be wrapped in responsive aspect-ratio containers (`aspect-ratio: 16/9`).

## Verification & Testing Mandate

No feature, screen, or bugfix is marked complete until visually or programmatically verified across the 7 breakpoints:
- [ ] 320px: No text truncation, no horizontal overflow, buttons accessible.
- [ ] 375px: Primary mobile experience operates cleanly.
- [ ] 430px: Large mobile display utilizes additional width effectively.
- [ ] 768px: Tablet layout adapts grids, navigation transitions cleanly.
- [ ] 1024px: Desktop features, sidebars, and multi-column forms engage.
- [ ] 1440px: Content max-width prevents awkward ultra-wide stretching.
- [ ] 1920px: Layout remains visually balanced with centered containers.
