#!/usr/bin/env bash
# validate.sh — Validate all HTML files in the craft printables kit
# Exit code 0 = all valid, 1 = any errors

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML_FILES=(
  "$DIR/project-planner.html"
  "$DIR/supply-list.html"
  "$DIR/pattern-tracker.html"
  "$DIR/completion-log.html"
)

ERRORS=0

for FILE in "${HTML_FILES[@]}"; do
  if [ ! -f "$FILE" ]; then
    echo "MISSING: $FILE"
    ERRORS=$((ERRORS + 1))
    continue
  fi

  if python3 -c "
import html.parser, sys
class V(html.parser.HTMLParser):
    def __init__(self):
        super().__init__()
        self.errors = []
    def error(self, msg):
        self.errors.append(msg)
v = V()
v.feed(open(sys.argv[1]).read())
if v.errors:
    for e in v.errors:
        print(sys.argv[1] + ': ' + e)
    sys.exit(1)
" "$FILE" 2>/dev/null; then
    echo "OK: $FILE"
  else
    echo "INVALID: $FILE"
    ERRORS=$((ERRORS + 1))
  fi
done

# Verify CSS exists and references are consistent
CSS_FILE="$DIR/print.css"
if [ -f "$CSS_FILE" ]; then
  echo "OK: $CSS_FILE"
else
  echo "MISSING: $CSS_FILE"
  ERRORS=$((ERRORS + 1))
fi

# Verify LICENSE copyright line
LICENSE_FILE="$DIR/LICENSE"
if grep -q "Copyright (c) 2026 Asdale Dynamics, LLC" "$LICENSE_FILE" 2>/dev/null; then
  echo "OK: LICENSE copyright line present"
else
  echo "FAIL: LICENSE missing exact copyright line"
  ERRORS=$((ERRORS + 1))
fi

# Verify README credits Asdale Dynamics, LLC
README_FILE="$DIR/README.md"
if grep -q "Asdale Dynamics, LLC" "$README_FILE" 2>/dev/null; then
  echo "OK: README credits Asdale Dynamics, LLC"
else
  echo "FAIL: README missing Asdale Dynamics, LLC credit"
  ERRORS=$((ERRORS + 1))
fi

echo ""
if [ "$ERRORS" -eq 0 ]; then
  echo "All checks passed ($(( ${#HTML_FILES[@]} + 3 )) files validated)."
  exit 0
else
  echo "$ERRORS check(s) failed."
  exit 1
fi