---
name: autonomous-builder
description: >-
  Lead full end-to-end autonomous development of websites and web applications, from PRD generation
  and database modeling to responsive UI implementation, testing, and delivery.
---

# Autonomous Builder Skill

## 1. Purpose
Execute end-to-end development of web features and complete applications autonomously, coordinating architecture, database, backend, frontend, responsive styling, and testing.

## 2. When to Use
- When asked to build a new website, web application, portal, or complex feature module from scratch.
- When executing a multi-step project plan without requiring step-by-step user micromanagement.

## 3. Workflow
1. **Discovery & Environment Setup**:
   - Inspect workspace, verify existing stack (`stack-detector`), and confirm development environment.
2. **PRD & Architecture Generation**:
   - Generate `PRD.md` using `prd-generator` and `templates/prd-template.md`.
   - Produce technical architecture blueprint using `templates/architecture-template.md`.
3. **Data Layer Construction**:
   - Create database migrations, schema models, relationships, and seeders (`database-architect`).
4. **Backend & API Logic**:
   - Implement controllers, business services, and routes (`api-design`).
5. **Frontend UI & Responsive Design**:
   - Build UI components using existing design system tokens (`ui-ux-design-system`).
   - Implement strict responsive layouts across all 7 viewports (`responsive-design`).
6. **Testing & Quality Assurance**:
   - Execute automated testing (`automated-testing`) and cross-breakpoint validation.
   - Run security audit (`security-audit`).
7. **Delivery & Change Report**:
   - Generate change report and documentation using `templates/change-log-template.md`.

## 4. Implementation Guidelines
- Always prioritize working, testable milestones over sprawling half-finished code.
- Verify each layer before building on top of it (e.g., verify database migration before coding controllers).
- Keep code clean, modular, and self-documenting throughout every phase.

## 5. Restrictions
- Do not abandon the project midway; carry through all milestones to completion.
- Do not bypass responsive design verification across the 7 mandatory viewports.
- Do not introduce breaking changes without updating documentation.

## 6. Testing Checklist
- [ ] Complete workflow executed from PRD to final delivery.
- [ ] Database migrated, seeded, and tested.
- [ ] All 7 responsive viewports visually verified without horizontal overflow.
- [ ] Automated tests pass with zero errors.

## 7. Completion Criteria
- Fully functional, tested, and responsive web application delivered with complete documentation.
