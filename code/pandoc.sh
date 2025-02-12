#!/bin/bash

# Usage: ./pandoc.sh path/to/markdown/*.md

# Check if at least one argument is provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <markdown-file> [<markdown-file> ...]"
  exit 1
fi

# Loop over all input files
for input_file in "$@"; do
  input_file_base="$(basename "${input_file%.*}")"

  # Output files
  yaml_file="mustache.yaml"
  output_file="mustache.md"

  # Extract YAML frontmatter and save to mustache.yaml
  awk '/^---$/ {i++} i==1 && NR>1 {print > "'$yaml_file'"} i==2 {exit}' "$input_file"

  # Create the new markdown file, replacing the frontmatter with the mustache line
  awk 'BEGIN {found=0} /^---$/ {found++; if (found==2) {print "---\nmustache: '$yaml_file'\n---"; next}} found<2 {next} {print}' "$input_file" > "$output_file"

  # Convert the new markdown file to docx and html
  pandoc "$output_file" --filter pandoc-mustache -o ../docx/"${input_file_base}.docx"
  pandoc "$output_file" --filter pandoc-mustache -o ../html/"${input_file_base}.html"

  # Delete the yaml file and new output file
  rm "$yaml_file" "$output_file"
done
