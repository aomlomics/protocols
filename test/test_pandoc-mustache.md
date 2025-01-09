---
mustache: ./vars.yaml
---

# {{title}}

Author: {{author}}

Date: {{date}}

## Content

The temperature in {{place}} was {{temperature}} degrees.

## How To

- Install `pandoc-mustache` with command `pip install pandoc-mustache`.
- Create a file called `vars.yaml` with all the YAML terms. You can change the name of this file.
- Add the line `mustache: ./vars.yaml` to the YAML frontmatter of the Markdown document. Note: Only YAML terms in vars.yaml will be readable. YAML frontmatter in the Markdown document isn't readable.
- Run pandoc with command `pandoc test_pandoc-mustache.md --filter pandoc-mustache -o test_pandoc-mustache.pdf`.
