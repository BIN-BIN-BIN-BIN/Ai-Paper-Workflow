#!/usr/bin/env bash
# Install the ai-paper-workflow skill for one or more AI agents.
# 为一个或多个 AI 智能体安装 ai-paper-workflow skill。
#
# Usage / 用法:
#   ./scripts/install.sh            # auto: install for every agent found on this computer
#   ./scripts/install.sh claude     # Claude Code   -> ~/.claude/skills/
#   ./scripts/install.sh codex      # OpenAI Codex  -> ~/.agents/skills/
#   ./scripts/install.sh hermes     # Hermes Agent  -> ~/.hermes/skills/  (or $HERMES_HOME/skills/)
#   ./scripts/install.sh workbuddy  # WorkBuddy     -> ~/.workbuddy/skills/
#   ./scripts/install.sh all        # all of the above, creating folders if needed
set -euo pipefail

NAME="ai-paper-workflow"
SRC="$(cd "$(dirname "$0")/.." && pwd)/skills/$NAME"
[ -f "$SRC/SKILL.md" ] || { echo "SKILL.md not found at $SRC"; exit 1; }

dest_for() {
  case "$1" in
    claude)    echo "$HOME/.claude/skills" ;;
    codex)     echo "$HOME/.agents/skills" ;;
    hermes)    echo "${HERMES_HOME:-$HOME/.hermes}/skills" ;;
    workbuddy) echo "$HOME/.workbuddy/skills" ;;
    *) return 1 ;;
  esac
}
home_for() {
  case "$1" in
    claude)    echo "$HOME/.claude" ;;
    codex)     [ -d "$HOME/.codex" ] && echo "$HOME/.codex" || echo "$HOME/.agents" ;;
    hermes)    echo "${HERMES_HOME:-$HOME/.hermes}" ;;
    workbuddy) echo "$HOME/.workbuddy" ;;
  esac
}
install_one() {
  local dest; dest="$(dest_for "$1")"
  mkdir -p "$dest"
  rm -rf "${dest:?}/$NAME"
  cp -R "$SRC" "$dest/$NAME"
  echo "✔ $1: installed to $dest/$NAME"
}

TARGET="${1:-auto}"
AGENTS="claude codex hermes workbuddy"
case "$TARGET" in
  auto)
    found=0
    for a in $AGENTS; do
      if [ -d "$(home_for "$a")" ]; then install_one "$a"; found=1; fi
    done
    [ "$found" = 1 ] || echo "No supported agent folder found. Run with: claude | codex | hermes | workbuddy | all"
    ;;
  all) for a in $AGENTS; do install_one "$a"; done ;;
  claude|codex|hermes|workbuddy) install_one "$TARGET" ;;
  *) echo "Unknown target: $TARGET"; exit 1 ;;
esac
echo "Restart the agent (or start a new session) so it picks up the skill. / 请重启智能体或开新会话以加载 skill。"
