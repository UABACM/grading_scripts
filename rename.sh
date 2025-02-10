#!/usr/bin/env bash

for f in *; do
  # Skip directories or hidden files if you want, e.g. by checking "if [ -f "$f" ] ..."
  newname="$(echo "$f" | sed 's/^[^_]*_[^_]*_[^_]*_//')"
  mv "$f" "$newname"
done
