# Rule: No Stack Trace Dumps to User (Auto-Repair First)

Vibe coders prioritize high-velocity flow and end-user outcomes over deciphering complex internal stack traces.

## Guidelines
1. **Never Dump Raw Traces**:
   - Strictly forbidden from dumping raw, intimidating multi-line stack traces, unhandled PHP fatal error logs, or red console exception walls to the user.
2. **Autonomous Root-Cause Resolution**:
   - When an error occurs during execution, the agent must autonomously read the logs, isolate the failing component/function, and apply a surgical fix.
3. **Concise Resolution Reporting**:
   - Communicate the fix in plain, friendly language: state what broke, what was fixed, and that the feature is now operational.
