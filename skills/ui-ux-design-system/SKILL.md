---
name: ui-ux-design-system
description: >-
  Design clean, minimalist UI/UX with strictly essential icons, disciplined 1-brand-color palettes,
  and zero decorative clutter. Use when building or styling web interfaces.
---

# UI/UX Design System Skill

## 1. Purpose
Guide the creation of elegant, clean, and minimalist user interfaces that prioritize usability, visual hierarchy, consistent spacing, disciplined color palettes, and strictly essential icon usage.

## 2. When to Use
- When defining design tokens (colors, typography, spacing, shadows).
- When designing UI layouts, navigation, cards, tables, dashboards, and forms.
- When auditing existing interfaces for visual noise, decorative clutter, or contrast issues.

## 3. Workflow
1. **Mandatory Color Consultation & Preference Check**:
   - Ask the user what color scheme, primary brand color, and theme (Light / Dark mode) they want before writing styles.
   - Strictly prohibit arbitrary rainbow or multi-colored palettes. Stick to 1 primary brand color + clean neutrals.
2. **Strictly Essential Icon Assessment**:
   - Evaluate every proposed icon: Is it strictly necessary for function (e.g., dashboard metrics, search, close button)?
   - If not strictly necessary, omit the icon. Do NOT add icons to standard cards, text, or section headers.
3. **Establish Token Foundation**:
   - Palette: 1 Primary brand color (user-confirmed), 1 Neutral gray scale (50 to 900), functional semantic colors (Success, Danger, Warning).
   - Typography: 1 clean sans-serif system font stack (e.g., Inter, system-ui, -apple-system).
   - Spacing: 4px / 8px baseline grid (4, 8, 12, 16, 24, 32, 48, 64px).
4. **Apply Purposeful Minimalism**: Remove unnecessary borders, heavy shadows, and decorative backgrounds.
5. **Interactive Feedback**: Define distinct hover, focus-visible, active, and disabled states for all controls.

## 4. Implementation Guidelines
- Maintain minimum contrast ratio of 4.5:1 for standard text and 3:1 for large text (WCAG AA).
- Use `focus-visible: ring-2 ring-primary ring-offset-2` for accessible keyboard navigation.
- Hero sections must be authentic and content-driven: lead with a strong H1 title, a clear value proposition, and actionable CTA buttons.

## 5. Restrictions
- **STRICTLY PROHIBITED**: Do not scatter decorative icons across features, cards, or headings. Icons are strictly reserved for high-utility functional needs (like dashboards, search inputs, close buttons).
- **STRICTLY PROHIBITED**: Do not create arbitrary rainbow, multi-colored, or colorful clutter. Every website must use a cohesive, disciplined palette (1 primary color + neutrals).
- **MANDATORY**: Always ask or confirm the user's preferred color scheme before styling. Do not guess or pick random vibrant colors.
- **STRICTLY PROHIBITED**: Do not generate floating pill badges or availability status badges above Hero titles (e.g., *"Tersedia untuk Proyek Baru & Konsultasi"*, *"Available for projects/hire"*, or pastel oval badges with green status dots).

## 6. Testing Checklist
- [ ] User's color palette preference requested and confirmed.
- [ ] UI is clean, cohesive, and NOT rainbow/multi-colored (1 primary color + neutrals).
- [ ] Zero non-essential or decorative icons used.
- [ ] Zero cliché AI pill badges or decorative status dots.
- [ ] Color contrast verified with WCAG AA compliance.

## 7. Completion Criteria
- Minimalist, cohesive interface adhering to 1 brand color, strictly essential functional icons, and verified contrast.
