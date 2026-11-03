---
name: responsive-design
description: >-
  Enforce multi-device responsive web design across 7 mandatory viewports (320px to 1920px).
  Use whenever creating, updating, styling, or auditing UI components, pages, forms, tables,
  dashboards, or navigation systems.
---

# Responsive Design Skill (HIGHEST PRIORITY)

## 1. Purpose
Provide precise, systematic instructions for designing, implementing, and verifying fully responsive layouts, components, and pages across all target screen sizes without horizontal overflow or degraded user experiences.

## 2. When to Use
- Whenever designing, coding, or styling any website, web application, or UI component.
- When transforming desktop-only layouts into mobile-friendly and tablet-friendly layouts.
- When testing and auditing existing screens for responsiveness, overflow bugs, or touch target issues.

## 3. Workflow
1. **Analyze Requirements & Layout**: Identify grid structures, navigation patterns, and data density.
2. **Mobile-First Scaffolding**: Begin styling for the 320px - 375px baseline before adding breakpoint enhancements.
3. **Fluid Layout Implementation**: Apply CSS Grid (`auto-fit`/`auto-fill`), Flexbox with wrapping, and fluid spacing using `clamp()`.
4. **Adaptive Navigation & Controls**: Implement drawer/hamburger menus for mobile (< 768px) and persistent bars for desktop (>= 1024px).
5. **Component-Specific Adaptation**:
   - **Tables**: Wrap with responsive containers or convert to stacked card lists on mobile.
   - **Forms**: Stack inputs vertically on mobile; use 2-column grids on desktop.
   - **Modals**: Full-screen or bottom sheet on mobile; centered modal on desktop.
6. **Cross-Breakpoint Testing**: Test across all 7 target viewports: 320px, 375px, 430px, 768px, 1024px, 1440px, and 1920px.
7. **Document & Verify**: Complete the responsive checklist template.

## 4. Implementation Guidelines
- **Zero Horizontal Overflow**: Always set `box-sizing: border-box`. Ensure containers have `max-width: 100%`.
- **Viewport Metas**: Ensure `<meta name="viewport" content="width=device-width, initial-scale=1.0">` is present in HTML.
- **Touch Targets**: Buttons, icons, and interactive elements must measure at least 44x44px on touch viewports.
- **Fluid Typography**: Use `font-size: clamp(1rem, 2.5vw, 1.75rem);` for adaptive scaling.
- **Images & Media**: Use `max-width: 100%; height: auto; display: block;` and explicit aspect ratios.

## 5. Restrictions
- Do not use fixed pixel widths on parent containers (e.g., `width: 800px` is prohibited; use `max-width: 800px; width: 100%`).
- Do not hide critical content or essential functionality on mobile viewports; adapt layout instead of removing features.
- Do not rely on mouse-only hover states for primary interaction or information disclosure.

## 6. Testing Checklist
- [ ] 320px (Small Mobile): Zero horizontal scroll, readable text, accessible hamburger button.
- [ ] 375px (Standard Mobile): Margins clean, touch targets >= 44x44px.
- [ ] 430px (Large Mobile): Layout expands gracefully without empty voids.
- [ ] 768px (Tablet): Navigation and grid elements transition cleanly.
- [ ] 1024px (Laptop): Full desktop navigation and multi-column forms engage.
- [ ] 1440px (Desktop): Centered container max-width prevents over-stretching.
- [ ] 1920px (Ultrawide): Backgrounds span full width while content remains centered.

## 7. Completion Criteria
- Layout renders cleanly across all 7 viewports without horizontal overflow.
- All interactive controls are touch-friendly and functional.
- Responsive checklist recorded in `templates/responsive-checklist-template.md`.
