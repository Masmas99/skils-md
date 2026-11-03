# Rule: Change Transparency & In-Chat Reporting

Every modification, addition, and refactoring performed by the agent must be completely transparent, explainable, and traceable.

## Reporting Protocol

### 1. Pre-Change Rationale
- State clearly what file is being changed, why it is being changed, and what requirement it fulfills.
- Keep diffs focused, surgical, and clean.

### 2. In-Chat Change Delivery (No Residual Markdown Files)
- Present changelogs, modified file lists, and technical rationales **directly inside the chat response**.
- Do NOT create or leave persistent `CHANGELOG.md` files in the user's workspace unless the user explicitly requests one. If temporary changelog files are generated during testing, they must be deleted upon task completion.
