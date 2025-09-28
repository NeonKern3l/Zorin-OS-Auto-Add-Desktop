#!/usr/bin/env bash

SRC_DIRS=(/usr/share/applications "$HOME/.local/share/applications" /var/lib/snapd/desktop/applications)
DEST="$HOME/Desktop"

read -p "Search for application (type part of the name): " q
if [ -z "$q" ]; then
  echo "No search term entered. Exiting."
  exit 1
fi

mapfile -t matches < <(for d in "${SRC_DIRS[@]}"; do
  [ -d "$d" ] || continue
  grep -iRl --null --include='*.desktop' -- "$q" "$d" 2>/dev/null | sed 's/\x00/\n/g'
done | sed 's/^$//' | sort -u)

if [ ${#matches[@]} -eq 0 ]; then
  echo "No .desktop files matched \"$q\"."
  exit 0
fi

echo "Matches found:"
i=1
for f in "${matches[@]}"; do
  name=$(basename "$f")
  appname=$(grep -m1 '^Name=' "$f" 2>/dev/null | sed 's/^Name=//' || echo "$name")
  printf "%3d) %s  —  %s\n" "$i" "$appname" "$name"
  ((i++))
done

read -p "Enter the number(s) to copy (e.g. 1 or 1 3 4): " nums
if [ -z "$nums" ]; then
  echo "No selection. Exiting."
  exit 0
fi

for n in $nums; do
  if ! [[ $n =~ ^[0-9]+$ ]] ; then
    echo "Skipping invalid entry: $n"
    continue
  fi
  idx=$((n-1))
  if [ $idx -lt 0 ] || [ $idx -ge ${#matches[@]} ]; then
    echo "Number out of range: $n"
    continue
  fi
  src="${matches[$idx]}"
  base=$(basename "$src")
  dst="$DEST/$base"
  cp -u "$src" "$dst" && chmod +x "$dst" 2>/dev/null || true
  gio set "$dst" "metadata::trusted" true 2>/dev/null || true
  echo "Copied: $base -> $dst"
done

echo "Done."
