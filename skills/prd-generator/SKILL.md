---
name: prd-generator
description: >-
  Generate comprehensive Product Requirements Documents (PRDs) autonomously before building any
  web application or major feature. Use when starting a new project, scoping user requirements,
  or defining system specifications.
---

# PRD Generator Skill

## 1. Purpose
Autonomously analyze user requests, business objectives, and architectural constraints to generate a clear, structured Product Requirements Document (PRD) before development begins.

## 2. When to Use
- At the inception of any new web application, site, or major feature module.
- When project scope is broad, vague, or requires structured decomposition into functional and non-functional requirements.
- Prior to creating database migrations, API routes, or frontend templates.

## 3. Workflow
1. **Scope Extraction**: Extract user intents, target audience personas, and primary problem statements.
2. **Feature Decomposition**: Break high-level requests into P0 (Must have), P1 (Should have), and P2 (Nice to have) features.
3. **Data & Architecture Mapping**: Determine required data entities, relationships, and tech stack alignment.
4. **Draft PRD**: Populate `templates/prd-template.md` with structured sections.
5. **Review & Validation**: Verify that non-functional requirements (responsiveness across 7 viewports, security, performance) are explicitly specified.
6. **Save PRD**: Store the resulting document in the project root or docs folder as `PRD.md`.

## 4. Implementation Guidelines
- Always define clear Acceptance Criteria and "Definition of Done" for each feature.
- Explicitly detail edge cases (e.g., empty states, network failure, unauthorized access).
- Keep the document actionable, technical, and concise without excessive corporate jargon.

## 5. Restrictions
- Do not proceed to coding complex features without first formulating the PRD.
- Do not omit non-functional requirements (responsive design, security, performance).
- Do not invent external dependencies or integrations outside the agreed project stack.

## 6. Testing Checklist
- [ ] Executive summary and problem statement are clearly defined.
- [ ] Functional requirements cataloged with priorities (P0, P1, P2).
- [ ] Non-functional requirements include 7 responsive viewports, OWASP security, and performance targets.
- [ ] Acceptance criteria are testable and unambiguous.

## 7. Completion Criteria
- Complete `PRD.md` file created and saved based on `templates/prd-template.md`.
- Project roadmap and milestone sequence established.
