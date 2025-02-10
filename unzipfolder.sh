#!/usr/bin/env bash
# requires sudo apt install unzip (brew install unzip)
for file in *.zip; do
    folder="${file%.zip}"
    mkdir "$folder"
    unzip "$file" -d "$folder"
    rm -rf "$file"
done