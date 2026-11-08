#!/usr/bin/env bash
set -euo pipefail

skill_file="${1:-SKILL.md}"
usage_file="${2:-USAGE.md}"

fail() {
  printf 'FAIL: %s\n' "$1" >&2
  exit 1
}

line_count=$(wc -l < "$skill_file")
(( line_count <= 140 )) || fail "SKILL.md should stay concise (got ${line_count} lines)"

rg -q '^name: suno$' "$skill_file" || fail "missing suno frontmatter name"
rg -q '开放.*默认|默认.*开放' "$skill_file" || fail "open freedom must be the default"
rg -q '嘻哈' "$skill_file" || fail "hip-hop must be a first-class direction"
rg -q '放克' "$skill_file" || fail "funk must be a first-class direction"
rg -q "I'm Yours|阳光.*松弛.*原声|松弛.*原声流行" "$skill_file" || fail "relaxed acoustic-pop direction must be represented"
rg -q '最多两个|不超过两个' "$skill_file" || fail "per-song exclusions must be capped at two"
rg -q '只要.*提示词|提示词.*不.*歌词' "$skill_file" || fail "prompt-only routing must be explicit"
rg -q '参考.*可选.*技法|参考.*不.*硬约束' "$skill_file" || fail "references must be optional techniques, not inherited hard constraints"
rg -q '用户.*请求.*优先|本文件.*优先' "$skill_file" || fail "core request and skill rules must override conflicting references"

if rg -q '默认五件套|每首.*三段副歌|三段副歌.*必须|Bridge.*必须|Solo.*必须' "$skill_file" "$usage_file"; then
  fail "old mandatory output or structure remains"
fi

rg -q '稳妥' "$usage_file" || fail "usage must explain stable freedom"
rg -q '开放' "$usage_file" || fail "usage must explain open freedom"
rg -q '实验' "$usage_file" || fail "usage must explain experimental freedom"
rg -q '嘻哈' "$usage_file" || fail "usage needs a hip-hop example"
rg -q '放克' "$usage_file" || fail "usage needs a funk example"

printf 'PASS: modular Suno skill structure is valid\n'
