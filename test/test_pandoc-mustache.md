---
mustache: ./vars.yaml
---

# {{title}}

Author: {{author}}

Date: {{date}}

## Content

The temperature in {{place}} was {{temperature}} degrees.

## Install

Create a conda environment called `writing` and install pandoc and pandoc-mustache:

```bash
conda create --name writing pip
conda activate writing
conda install -c conda-forge pandoc
pip install -U pandoc-mustache
 ```

## Run

- Create a file called `vars.yaml` with all the YAML terms. You can change the name of this file.
- Add the line `mustache: ./vars.yaml` to the YAML frontmatter of the Markdown document. Note: Only YAML terms in vars.yaml will be readable. YAML frontmatter in the Markdown document isn't readable.
- Run pandoc with command `pandoc test_pandoc-mustache.md --filter pandoc-mustache -o test_pandoc-mustache.pdf`.
