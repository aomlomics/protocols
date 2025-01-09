#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <markdown-file>"
  exit 1
fi

# Input markdown file
input_file="$1"

# Output files
yaml_file="myvars.yaml"
output_file="new_${input_file}"

# Extract YAML frontmatter and save to vars.yaml
awk '/^---$/ {i++} i==1 && NR>1 {print > "'$yaml_file'"} i==2 {exit}' "$input_file"

# Create the new markdown file with the additional line
awk 'NR==2 {print "mustache: ./myvars.yaml\n"} {print}' "$input_file" > "$output_file"

echo "YAML frontmatter saved to $yaml_file"
echo "New markdown file created as $output_file"
