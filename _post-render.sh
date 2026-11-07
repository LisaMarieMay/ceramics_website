#!/usr/bin/env bash
# Remove rendered output for pages marked `draft: true` so they never
# get published (Quarto renders them, with just a banner, by default).
cd "$(dirname "$0")" || exit 1

while IFS= read -r qmd; do
  rel="${qmd#./}"
  base="docs/${rel%.qmd}"
  rm -f "$base.html"
  rm -rf "$base"_files
done < <(grep -rlE '^draft:[[:space:]]*true' --include='*.qmd' . | grep -v '^\./docs/')
