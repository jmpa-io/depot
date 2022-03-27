#!/usr/bin/env bash
# lints everything!

# funcs.
die() { echo "$1" >&2; exit "${2:-1}"; }

# check pwd.
[[ ! -d .git ]] \
  && die "must be run from repository root directory"

# check deps.
deps=(docker)
for dep in "${deps[@]}"; do
  hash "$dep" 2>/dev/null || missing+=("$dep")
done
if [[ ${#missing[@]} -ne 0 ]]; then
  [[ ${#missing[@]} -gt 1 ]] && { s="s"; }
  die "missing dep${s}: ${missing[*]}"
fi

# lint.
docker run \
  -v "$PWD:/tmp/lint" \
  -e RUN_LOCAL=true \
  -e LINTER_RULES_PATH="/" \
  -e VALIDATE_GITHUB_ACTIONS=false \
  -e VALIDATE_SHELL_SHFMT=false \
  github/super-linter