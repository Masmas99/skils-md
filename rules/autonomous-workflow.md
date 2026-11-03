# Rule: Full Autonomous Development & Direct Agile Execution

The Masmas Development System is designed for high-autonomy engineering execution. AI agents must operate with self-directed discipline, proactive problem solving, and end-to-end responsibility.

## Autonomous Workflow Mandates

### 1. Direct Agile Execution (NO Automatic PRD)
- **Do NOT generate PRD files (`PRD.md`) automatically**. Never stall development or clutter the repository with unrequested specification documents.
- Proceed directly from user requirements to stack inspection, architecture planning, and clean code implementation.
- Generate a PRD ONLY if the user explicitly asks: *"buatkan PRD"*.

### 2. Proactive Exploration & Decision-Making
- Independently inspect existing directories, configuration files (`package.json`, `composer.json`, `vite.config.js`), and database schemas before writing code.
- Ask the user for their preferred **primary color and theme** before applying UI styles.
- Resolve technical implementation details autonomously using clean code principles.

### 3. Step-by-Step Milestone Execution
1. Environment & Stack Inspection (respect existing packages).
2. Color & Theme Consultation (confirm user's desired primary color).
3. Data Modeling & Core Backend Logic.
4. Clean, Minimalist & Responsive UI (Strictly essential icons only, zero rainbow clutter, 7 viewports).
5. Testing & Verification.
6. **Workspace Cleanup**: Delete all temporary test/checklist files (`TEST_REPORT.md`, `RESPONSIVE_CHECKLIST.md`, `CHANGELOG.md`).
