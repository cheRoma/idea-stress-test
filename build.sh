#!/usr/bin/env bash
#
# Packages the skill into idea-stress-test.skill for upload to Claude.ai / Cowork.
# Claude Code users don't need this — just clone the repo into ~/.claude/skills/.
#
set -euo pipefail

SKILL_NAME="idea-stress-test"
OUT="${SKILL_NAME}.skill"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$ROOT"

if command -v zip >/dev/null 2>&1; then
  ARCHIVER=zip
elif command -v python3 >/dev/null 2>&1; then
  ARCHIVER=python3
else
  echo "error: need either 'zip' or 'python3' to build the archive." >&2
  exit 1
fi

[ -f SKILL.md ] || {
  echo "error: SKILL.md not found in $ROOT" >&2
  exit 1
}

STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

mkdir -p "$STAGE/$SKILL_NAME"
cp SKILL.md "$STAGE/$SKILL_NAME/"
cp -R references "$STAGE/$SKILL_NAME/"
cp LICENSE "$STAGE/$SKILL_NAME/"

rm -f "$OUT"

if [ "$ARCHIVER" = zip ]; then
  ( cd "$STAGE" && zip -q -r "$ROOT/$OUT" "$SKILL_NAME" -x '*.DS_Store' )
else
  python3 - "$STAGE" "$ROOT/$OUT" "$SKILL_NAME" <<'PY'
import os, sys, zipfile

stage, out, name = sys.argv[1], sys.argv[2], sys.argv[3]
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for root, dirs, files in os.walk(os.path.join(stage, name)):
        dirs.sort()
        for f in sorted(files):
            if f == ".DS_Store":
                continue
            full = os.path.join(root, f)
            z.write(full, os.path.relpath(full, stage))
PY
fi

echo "built: $OUT"
python3 -c "import zipfile,sys; [print(' ', n) for n in sorted(zipfile.ZipFile(sys.argv[1]).namelist())]" "$OUT" 2>/dev/null \
  || unzip -l "$OUT" | sed '1,3d;$d'
