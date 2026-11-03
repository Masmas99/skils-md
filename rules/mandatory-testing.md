# Rule: Mandatory Testing & Workspace Cleanup

Code must be tested and verified without leaving leftover test documentation polluting the user's workspace.

## Testing & Cleanup Standards

### 1. Multi-Tiered Verification
- **Unit & Logic Tests**: Validate critical business calculations, models, and endpoints.
- **UI & Layout Verification**: Verify layouts across all 7 mandatory viewports (320px to 1920px) with zero horizontal overflow.
- **Zero Unhandled Errors**: No console errors, fatal PHP warnings, or unhandled promise rejections.

### 2. Mandatory Workspace Cleanup (Zero Residue Policy)
- **DELETE ALL TEMPORARY TEST FILES UPON COMPLETION**:
  - Once testing and verification are finished, the agent MUST immediately delete all temporary report files such as:
    - `TEST_REPORT.md`
    - `RESPONSIVE_CHECKLIST.md`
    - `CHANGELOG.md`
    - `TEST_PLAN.md`
  - Do not leave markdown test reports in the user's project root directory.
  - Present the verification summary and test results **directly in the chat conversation**, keeping the repository clean and production-ready.
