---
name: error-debugger
description: >-
  Systematically diagnose, isolate, and remediate frontend and backend software errors,
  runtime exceptions, and unexpected behaviors using root-cause analysis.
---

# Error Debugger Skill

## 1. Purpose
Rapidly and systematically identify, reproduce, diagnose, and resolve bugs and runtime failures across application code, network requests, and database layers without introducing regressions.

## 2. When to Use
- When encountering HTTP 500 errors, unhandled JS exceptions, or PHP fatal errors.
- When visual rendering bugs, broken layouts, or unexpected application state occurs.
- When automated test suites fail.

## 3. Workflow
1. **Error Capture & Reproduction**:
   - Read the exact stack trace, error message, and reproduction conditions.
   - Isolate the failing component, route, or SQL query.
2. **Root-Cause Analysis (RCA)**:
   - Trace data flow backward from the point of failure to the root trigger.
   - Check for null pointers, undefined variables, missing database columns, or race conditions.
3. **Formulate Minimal Fix**:
   - Develop a surgical, minimal fix that resolves the root cause.
   - Avoid superficial band-aids (e.g., silencing errors with `@` or empty `try...catch`).
4. **Implement Defensive Guards**:
   - Add type guards, null checks, or fallback states to prevent reoccurrence.
5. **Regression Verification**:
   - Verify that the fix resolves the original issue and introduces no side-effects.

## 4. Implementation Guidelines
- Read system logs (`storage/logs/laravel.log`, console logs) directly rather than guessing.
- Write a reproducing unit test whenever feasible before fixing the bug.
- Log meaningful context when catching anticipated exceptions.

## 5. Restrictions
- Never suppress exceptions silently without logging or notifying the user.
- Never alter unrelated files while debugging a specific issue.
- Never leave temporary debugging dumps (`dd()`, `var_dump()`, `console.log()`) in committed code.

## 6. Testing Checklist
- [ ] Bug successfully reproduced and isolated.
- [ ] Root cause identified and explained clearly.
- [ ] Surgical fix applied and defensive checks added.
- [ ] Regression testing verifies existing features remain operational.

## 7. Completion Criteria
- Issue resolved, verified by test or reproduction check, with zero debug code left behind.
