#!/usr/bin/env bash

OUT=SpeedyBeeF405WING.param
IN=README.md

rm -f "$OUT"

while IFS= read -r line; do
  if grep -q -P '^- .+,\d+ ->' <<< "$line"; then
    key="$(grep -o -P '\w+,\d+' <<< "$line" | sed 's/\[//g' | sed 's/\]//g')"
    echo "$key" >> "$OUT"
  fi
done < $IN

cat "$OUT"
