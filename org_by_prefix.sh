#!/usr/bin/env bash

# 1. Gather all unique prefixes from files that have at least one underscore
prefixes=$(ls | grep '_' | cut -d_ -f1 | sort -u)

# 2. Loop over each prefix
for prefix in $prefixes; do
  echo "Creating folder '$prefix' and moving files that start with '$prefix'..."

  # Create the folder if it doesn't already exist
  mkdir -p "$prefix"

  # Move all files that begin with "$prefix"
  mv "${prefix}"* "$prefix/" 2>/dev/null
done