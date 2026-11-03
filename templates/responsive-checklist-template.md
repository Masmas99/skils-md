# Responsive Design & Viewport Matrix Checklist

Use this checklist to verify that the website or web application adapts flawlessly across all 7 mandatory viewports without horizontal overflow, broken navigation, or illegible text.

## Viewport Verification Matrix

### 1. Small Mobile (320px) — Minimum Device Baseline
- [ ] **Horizontal Overflow**: `document.documentElement.scrollWidth === window.innerWidth` (Zero horizontal scroll).
- [ ] **Navigation**: Collapsed into mobile hamburger/drawer; trigger button touch target >= 44x44px.
- [ ] **Typography**: Headings scaled appropriately (H1 clamp min >= 24px); no text clipping.
- [ ] **Forms**: All inputs stack vertically (`flex-col`); input fields fill 100% width; font size >= 16px to prevent iOS auto-zoom.
- [ ] **Buttons & CTAs**: Full-width or neatly aligned; touch target >= 44x44px.
- [ ] **Modals**: Fullscreen or bottom sheet with easy-to-reach close button.
- [ ] **Tables**: Transformed into card list or contained in horizontal scroll container with scroll hints.

### 2. Standard Mobile (375px) — Standard Smartphone
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Layout**: Spacing and margins (16px / 1rem) maintain visual breathing room.
- [ ] **Cards**: Single column layout; images scale with `aspect-ratio` maintained.
- [ ] **Touch Targets**: All clickable links, chips, and buttons separated by at least 8px padding.

### 3. Large Mobile (430px) — Plus / Max Smartphones
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Layout**: Utilizes additional screen width cleanly without awkward blank spaces.
- [ ] **Grid Elements**: Multi-column metadata or two-column badge layouts fit comfortably.

### 4. Tablet Portrait (768px) — iPads & Small Tablets
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Grid Transformation**: Dashboard metric cards transition from 1 column to 2 columns.
- [ ] **Navigation**: Drawer menu or compact icon bar adapts cleanly.
- [ ] **Content Measure**: Body text max-width constrained to comfortable reading length (45-75 chars).
- [ ] **Tables**: Multi-column data tables show primary and secondary columns.

### 5. Laptop & Tablet Landscape (1024px) — Laptop Baseline
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Navigation**: Full horizontal navbar or persistent sidebar expands automatically.
- [ ] **Grid Transformation**: Dashboard metric cards transition to 3 or 4 columns.
- [ ] **Modals**: Centered overlay modal with backdrop blur; max-width ~600px.
- [ ] **Form Layout**: 2-column form grids engage for paired fields (e.g., First Name / Last Name).

### 6. Desktop Display (1440px) — Standard Workstation
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Container Max-Width**: Main content wrapper centered with `max-w-7xl` or equivalent container to prevent excessive stretching.
- [ ] **Typography & Imagery**: High-resolution imagery sharp; spacing scales up (32px / 2rem gutters).
- [ ] **Multi-column Layout**: Main content area + contextual sidebar display side-by-side.

### 7. Large Desktop & Ultrawide (1920px+) — Full HD & 4K
- [ ] **Horizontal Overflow**: Zero horizontal scrolling.
- [ ] **Centering & Margins**: Visual alignment remains balanced; content does not stretch infinitely across the monitor.
- [ ] **Backgrounds & Banners**: Edge-to-edge section backgrounds span full width while text content remains inside bounded container.

## Sign-off Summary
- **Tester / Agent**: _______________________
- **Date Verified**: _______________________
- **Result**: [PASS / FAIL]
- **Notes / Fixes Applied**: __________________________________________________
