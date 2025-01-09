# AOML Omics Protocols

[![DOI](https://zenodo.org/badge/684207005.svg)](https://doi.org/10.5281/zenodo.14224754)

The repository contains protocols used by AOML Omics labs, made using the [BeBOP-OBON protocol templates](https://github.com/BeBOP-OBON/0_protocol_collection_template). 

## Protocols by category

### Sample collection

* [Water Sampling Protocol using Sterivex with Zirconia Beads](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_sampling_sterivex_beads.md)

### DNA extraction

* [DNA Extraction Protocol for Sterivex using KingFisher](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_extractdna_sterivex_kingfisher.md)

### Metabarcoding (amplicon) library prep

* [PCR Protocol 16S rRNA V4-V5 (EMP)](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu16sv4v5_emp.md)
* [PCR Protocol 18S rRNA V9 (EMP)](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu18sv9_emp.md)
* [PCR Protocol 12S rRNA V5-V6 (MiFish)](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu12sv5v6_mifish.md)

### Metagenomic (shotgun) library prep

* [Metagenome Library Prep Protocol (Illumina DNA Prep)](https://github.com/aomlomics/protocols/blob/main/markdown/protocol_libprep_metag_illumina.md)

## Citing protocols

To cite the protocols here, refer to the version number in the individual protocol, e.g., "Water Sampling Protocol using Sterivex with Zirconia Beads v1.2.0". You can also cite the GitHub repository and the release number, e.g., "https://github.com/aomlomics/protocols 2024-11-26 Release" and/or the Zenodo archive of the release, e.g., "https://zenodo.org/records/14224755".

## Protocol file formats

### Markdown

The native format of the protcols is Markdown. Clicking on a protocol above will open the protocol in the folder `markdown`. To download the protocol, click on the "Download raw file" button on the right side of the tool bar above the document. To view and/or print the protocol, open the Markdown file in a Markdown editor such as [Typora](https://typora.io).

### Word & HTML

For your convenience, we have generated Word and HTML versions of the protocols in the folders `docx` and `html`, respectively.

To generate alternate file formats from your Markdown protocol, follow the instructions below. This code is used in the script generate_docx_html.sh in this repository.

#### Install

Create a conda environment called `writing` and install pandoc and pandoc-mustache:

```bash
conda create --name writing pip
conda activate writing
conda install -c conda-forge pandoc
pip install -U pandoc-mustache
 ```

#### Run

* Create a file called `vars.yaml` with all the YAML terms. You can change the name of this file.
* Add the line `mustache: ./vars.yaml` to the beginning of the YAML frontmatter of the Markdown document. Note: Only YAML terms in vars.yaml will be readable. Other YAML frontmatter in the Markdown document is ignored by pandoc.
* Run pandoc with command `pandoc test_pandoc-mustache.md --filter pandoc-mustache -o test_pandoc-mustache.pdf`.
