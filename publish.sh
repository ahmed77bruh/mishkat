#!/bin/bash
# Publishes the latest mishkat_study.html (and its dark-mode twin,
# DARKMODEMISHKAT.html) to the live GitHub Pages site.
# Run this any time either HTML changes:  bash site/publish.sh
set -e
BASE="/Users/ahmedduberia/Desktop/claude_only"
DIR="$BASE/site"
cp "$BASE/mishkat_study.html" "$DIR/index.html"
cp "$BASE/DARKMODEMISHKAT.html" "$DIR/dark.html"
cd "$DIR"
git add index.html dark.html
git commit -q -m "Update study site $(date '+%Y-%m-%d %H:%M')" || { echo "No changes to publish."; exit 0; }
git push -q origin main
echo "Published. Live in ~1 minute. Dark mode: https://ahmed77bruh.github.io/mishkat/dark.html"
