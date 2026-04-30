---
name: code-review
description: Risk-first code review for bugs, regressions, and missing tests. Use when user asks to review code/PR/diff.
---

# code-review

## Goal
Identify correctness and maintainability risks early.

## Workflow
1. Inspect changed files and execution paths.
2. Flag severity-ranked issues (logic, security, performance, tests).
3. Provide concrete fix suggestions and validation steps.
4. Keep summary short; prioritize findings.

## Output format
- Findings (high to low severity)
- Open questions
- Suggested tests
