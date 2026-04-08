#!/usr/bin/env bash
# INPUT: 当前仓库工作区、Git CLI、系统日期时间命令。
# OUTPUT: 自动执行 git add、git commit、git push，提交信息为当前日期时间。
# POS: 项目根目录下的仓库日常提交通用脚本。

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

git add -A

if git diff --cached --quiet; then
  echo "没有可提交的变更。"
  exit 0
fi

commit_message="$(date '+%Y-%m-%d %H:%M:%S')"

git commit -m "$commit_message"
git push

echo "已完成提交并推送：$commit_message"
