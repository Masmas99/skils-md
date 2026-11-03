---
name: automated-testing
description: >-
  Create, execute, and maintain automated unit, integration, and UI responsiveness test suites
  to guarantee code correctness and prevent regressions.
---

# Automated Testing Skill

## 1. Purpose
Formulate and execute comprehensive automated testing strategies covering business logic, API endpoints, error handling, and multi-device UI responsiveness.

## 2. When to Use
- Whenever writing new business logic, service classes, or data models.
- When creating or modifying API routes and controller actions.
- Before refactoring or merging code into production branches.

## 3. Workflow
1. **Identify Test Scenarios**: Extract happy path, edge cases, error conditions, and boundary values from the PRD.
2. **Unit Test Implementation**:
   - Write isolated unit tests for calculations, state transitions, and validation rules (e.g., PHPUnit / Pest / Jest).
3. **Integration & Feature Tests**:
   - Test full HTTP request/response cycles, authentication states, and database mutations.
   - Assert exact HTTP status codes and JSON response schemas.
4. **Responsive UI Verification**:
   - Programmatically or visually test layouts across 320px, 375px, 430px, 768px, 1024px, 1440px, and 1920px viewports.
5. **Execute Suite & Report**: Run the full test suite and document outcomes using `templates/test-plan-template.md`.

## 4. Implementation Guidelines
- Follow the Arrange-Act-Assert (AAA) pattern in all test methods.
- Use database transactions or in-memory SQLite for testing to maintain a clean test database state.
- Ensure test names clearly express the expected behavior (e.g., `test_user_cannot_access_dashboard_without_authentication`).

## 5. Restrictions
- Never skip testing edge cases (e.g., empty lists, invalid inputs, unauthorized access).
- Never write tests that depend on external live networks or third-party APIs; use mocks or stubs.
- Never tolerate intermittent ("flaky") tests.

## 6. Testing Checklist
- [ ] Unit tests cover all core business logic and calculations.
- [ ] Integration tests verify authentication and authorization rules.
- [ ] Error conditions return expected HTTP status codes (400, 401, 403, 404, 422).
- [ ] Test execution report documented in `templates/test-plan-template.md`.

## 7. Completion Criteria
- 100% test pass rate with documented test report and zero unhandled exceptions.
