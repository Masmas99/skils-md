---
name: self-healing-debugger
description: >-
  Autonomously diagnose, isolate, and repair frontend and backend errors without
  dumping stack traces on the user. Self-heal and verify code silently.
---

# Self-Healing Debugger Skill

## 1. Purpose
Empower the agent to autonomously detect, trace, and repair runtime bugs, syntax errors, and broken layouts without requiring the user to interpret cryptic stack traces or debug code themselves.

## 2. When to Use
- Whenever a console error, script crash, or broken UI element is detected.
- When an API route fails or returns unexpected data shapes.
- When automated tests or user manual verification reveals an issue.

## 3. Workflow
1. **Error Interception**:
   - Read the exact error message, file location, and line number from logs.
2. **Internal Root-Cause Analysis**:
   - Determine whether the cause is a null pointer, missing import, mismatched selector, or syntax flaw.
3. **Autonomous Patch Generation**:
   - Apply a surgical fix directly to the target file.
   - Add defensive null-checks or fallback values to prevent recurrence.
4. **Silent Regression Verification**:
   - Re-test the code to ensure the error is eliminated and no existing behavior broke.
5. **Human-Friendly Handover**:
   - Report the fix to the user in 1-2 friendly sentences explaining what was corrected.

## 4. Implementation Guidelines
- Add guard clauses (e.g., `if (!element) return;`) to protect DOM operations.
- Wrap asynchronous calls in `try...catch` with user-friendly toast alerts.
- Never output raw stack traces into the chat.

## 5. Restrictions
- Do not ask the user to fix the error for you.
- Do not leave unfinished debug comments (`// console.log("error here")`).
- Do not silence errors with empty `catch` blocks without a fallback or user notice.

## 6. Testing Checklist
- [ ] Bug reproduced and root cause identified internally.
- [ ] Surgical fix applied without touching unrelated code.
- [ ] Console shows zero uncaught errors after repair.

## 7. Completion Criteria
- Code self-healed, fully operational, and confirmed working with zero raw error dumps.
