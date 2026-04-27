#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="/Users/liuyongze/Public/Note"
BRANCH="main"
REMOTE="origin"
LOG_PREFIX="[auto-push]"

log() {
  printf '%s %s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$LOG_PREFIX" "$*"
}

if [ ! -d "$REPO_DIR/.git" ]; then
  log "repo not found: $REPO_DIR"
  exit 1
fi

cd "$REPO_DIR"

# Only stage superproject files, skip noisy nested plugin repo path.
git add -A -- . ':(exclude).obsidian/plugins/claudian' || true

if git diff --cached --quiet; then
  log "no staged changes, skip commit"
else
  commit_msg="auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
  git commit -m "$commit_msg"
  log "committed: $commit_msg"
fi

# Push local history to remote; if remote has new commits, rebase then retry once.
if git push "$REMOTE" "$BRANCH"; then
  log "push success"
  exit 0
fi

log "push rejected, try fetch + rebase"
git fetch "$REMOTE" "$BRANCH"
git rebase "$REMOTE/$BRANCH"
git push "$REMOTE" "$BRANCH"
log "push success after rebase"
