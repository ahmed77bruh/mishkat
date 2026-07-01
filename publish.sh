#!/bin/bash
# Publishes the latest mishkat_study.html to the live GitHub Pages site.
# Dark mode is a built-in toggle in this same file (body.dark-mode) —
# there is no separate dark HTML file anymore.
# Run this any time the study HTML changes:  bash site/publish.sh
set -e
BASE="/Users/ahmedduberia/Desktop/claude_only"
DIR="$BASE/site"
cp "$BASE/mishkat_study.html" "$DIR/index.html"
cd "$DIR"
git add index.html
git commit -q -m "Update study site $(date '+%Y-%m-%d %H:%M')" || { echo "No changes to publish."; exit 0; }
git push -q origin main
echo "Published. Live in ~1 minute."
