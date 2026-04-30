---
name: claude-mem
description: Long-term memory workflow for capturing, indexing, and reusing project decisions. Use when user mentions memory, context recall, or session continuity.
---

# claude-mem

## Goal
Build and maintain durable memory for ongoing work.

## Workflow
1. Summarize key decisions, constraints, and unresolved questions.
2. Extract stable facts vs time-sensitive facts.
3. Record reusable snippets (commands, paths, checklists).
4. Before new tasks, load relevant memory and validate drift.

## Output format
- Decisions
- Current assumptions
- Next-step checklist
- Drift risks
