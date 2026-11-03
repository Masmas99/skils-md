---
name: accessibility-audit
description: >-
  Evaluate, audit, and remediate web applications for accessibility (a11y), semantic HTML,
  WCAG 2.1 AA compliance, keyboard navigation, and screen reader support.
---

# Accessibility Audit Skill

## 1. Purpose
Ensure all web interfaces are inclusive, accessible, and compliant with WCAG 2.1 Level AA standards, enabling smooth navigation for users of all abilities.

## 2. When to Use
- During UI component design, template construction, and code review.
- When auditing forms, dialogs, dropdowns, and interactive controls for keyboard accessibility.
- Prior to final user sign-off and deployment.

## 3. Workflow
1. **Semantic HTML Inspection**:
   - Verify usage of landmark elements: `<header>`, `<nav>`, `<main>`, `<aside>`, `<footer>`.
   - Ensure proper heading levels (`<h1>` through `<h6>`) without skipping levels.
2. **Keyboard Navigation & Focus Management**:
   - Verify every interactive element is reachable via `Tab` key.
   - Verify focus indicator is clearly visible (`outline` or `ring`).
   - Ensure modals trap focus and allow exit via the `Escape` key.
3. **Color Contrast Analysis**:
   - Verify minimum contrast ratio: 4.5:1 for normal body text, 3:1 for large text / UI borders.
4. **ARIA & Form Accessibility**:
   - Ensure every `<input>` has an associated `<label for="...">`.
   - Provide `aria-label` or `aria-describedby` where visual labels are omitted.
   - Ensure all `<img>` tags have descriptive `alt` attributes (or `alt=""` for decorative).
5. **Remediation & Testing**: Apply fixes and verify using keyboard-only interaction.

## 4. Implementation Guidelines
- Prefer native semantic HTML elements (`<button>`, `<dialog>`, `<a>`) over `div` elements with click handlers.
- Maintain a minimum touch target size of **44x44px** for mobile and touch screens.
- Respect user motion preferences (`@media (prefers-reduced-motion: reduce)`).

## 5. Restrictions
- Never use `outline: none` without providing an alternative high-visibility focus indicator.
- Never use color alone to convey meaning (e.g., provide text or icons alongside red/green indicators).
- Never trap keyboard focus without an escape mechanism.

## 6. Testing Checklist
- [ ] Full keyboard navigation operational (Tab, Shift+Tab, Enter, Space, Escape).
- [ ] All inputs properly labeled.
- [ ] Text contrast ratios satisfy WCAG AA (>= 4.5:1).
- [ ] Screen reader landmarks and ARIA states functional.

## 7. Completion Criteria
- UI conforms to WCAG 2.1 AA accessibility benchmarks with verified keyboard navigation.
