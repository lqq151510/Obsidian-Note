# Claude Code 智能体配置说明

## 已配置位置
- 本地项目智能体目录：`/Users/liuyongze/Public/Note/.claude/agents`

## 来源（GitHub）
- 仓库：`https://github.com/VoltAgent/awesome-claude-code-subagents`
- 分支：`main`

## 已安装智能体（9个）
1. `backend-developer.md`
2. `frontend-developer.md`
3. `fullstack-developer.md`
4. `code-reviewer.md`
5. `debugger.md`
6. `security-auditor.md`
7. `devops-engineer.md`
8. `workflow-orchestrator.md`
9. `research-analyst.md`

## 使用方式
在 Claude Code 中直接描述任务即可，系统会根据智能体描述自动分派；也可以在提示里显式要求：
- “请用 `code-reviewer` 审查这个改动”
- “请用 `debugger` 定位这个报错根因”
- “请用 `workflow-orchestrator` 拆解并执行这个开发任务”

## 备注
- 这是项目级安装（仅对当前仓库生效）。
- 如果你希望全局生效，我可以再帮你同步到 `~/.claude/agents`。
