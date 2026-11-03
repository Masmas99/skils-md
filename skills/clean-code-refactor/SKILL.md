---
name: clean-code-refactor
description: >-
  Refactor legacy or poorly structured code to adhere to SOLID principles, DRY standards,
  modular separation of concerns, and clean naming conventions. Use during code cleanup.
---

# Clean Code Refactor Skill

## 1. Purpose
Transform complex, tightly-coupled, or unreadable code into modular, maintainable, and self-documenting software without altering external behavior.

## 2. When to Use
- When encountering long functions (> 40 lines), god classes, or deeply nested conditionals (> 3 levels).
- When duplicate code or logic is discovered in multiple controllers or views.
- Prior to adding major new features to legacy codebases.

## 3. Workflow
1. **Identify Code Smells**: Locate high cognitive complexity, duplicate logic, magic strings/numbers, or tightly coupled dependencies.
2. **Ensure Test Baseline**: Verify existing tests or write a verification test before modifying logic.
3. **Apply Incremental Refactoring**:
   - Extract Method / Extract Component.
   - Replace magic strings with typed enums or constants.
   - Decouple business logic from controllers into dedicated Service or Action classes.
   - Simplify conditional branches with guard clauses and early returns.
4. **Review Naming**: Rename variables and functions to accurately reflect their intent and domain context.
5. **Execute Regression Testing**: Verify all tests pass and application behavior is unchanged.

## 4. Implementation Guidelines
- Adhere to Single Responsibility Principle (SRP): One reason to change per class/module.
- Replace nested `if-else` blocks with guard clauses:
  ```php
  // Good: Early return
  if (!$user->isActive()) {
      return response()->json(['error' => 'Inactive account'], 403);
  }
  ```
- Remove all dead code, unused imports, and commented-out legacy blocks.

## 5. Restrictions
- Do not alter external API contracts, database schemas, or expected outputs during a refactor.
- Do not perform massive, sprawling refactors across unrelated modules in a single step.
- Do not leave unfinished `TODO` comments without tracking issues.

## 6. Testing Checklist
- [ ] Existing functionality verified and 100% working.
- [ ] Cyclomatic complexity reduced (no nesting > 3 levels).
- [ ] Dead code, temporary comments, and debug dumps removed.
- [ ] Code conforms to project linting and formatting rules.

## 7. Completion Criteria
- Modular, clean code adhering to SOLID and DRY, passing all regression tests.
