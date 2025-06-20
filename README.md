# AOML 'Omics Protocols

Protocols used by AOML 'Omics labs, made using the [BeBOP-OBON protocol templates](https://github.com/BeBOP-OBON/0_protocol_collection_template).

Each protocol has its own repository (listed below) and can be referenced using its own Zenodo DOI (with versioning).

[![DOI](https://zenodo.org/badge/684207005.svg)](https://doi.org/10.5281/zenodo.14224754) ***<- this is a blanket DOI for all protocols; please use DOIs to individual protocols linked below (in progress)***

## Protocol repositories by category

### Sample collection

* [protocol-sampling-sterivex-beads](https://github.com/aomlomics/protocol-sampling-sterivex-beads)
* [protocol-sampling-sterivex-dry](https://github.com/aomlomics/protocol-sampling-sterivex-dry)

### DNA extraction

* [protocol-extract-dna-sterivex-kingfisher](https://github.com/aomlomics/protocol-extract-dna-sterivex-kingfisher)
* [protocol-extract-dna-sedtrap-powersoil](https://github.com/aomlomics/protocol-extract-dna-sedtrap-powersoil)
* [protocol-extract-dna-okex](https://github.com/aomlomics/protocol-extract-dna-okex)

### Metabarcoding (amplicon) library prep

* [protocol-pcr-ssu16sv4v5-parada](https://github.com/aomlomics/protocol-pcr-ssu16sv4v5-parada)
* [protocol-pcr-ssu18sv9-amaralzettler](https://github.com/aomlomics/protocol-pcr-ssu18sv9-amaralzettler)
* [protocol-pcr-ssu12sv5v6-mifish](https://github.com/aomlomics/protocol-pcr-ssu12sv5v6-mifish)

### Metagenomic (shotgun) library prep

* [protocol-libprep-metag-illumina](https://github.com/aomlomics/protocol-libprep-metag-illumina)

## Citing protocols

To cite the protocols here, go to the protocol's repository and copy the Zenodo link provided there. If there are multiple releases (versions), be sure to cite the DOI associated with the release you are using.

## Protocol file formats

### Markdown

The native format of the protcols is Markdown. To download a protocol, go to that protocol's repsitory, click on the file name, and click on the "Download raw file" button on the right side of the tool bar above the document. To view and/or print the protocol, open the Markdown file in a Markdown editor such as [Typora](https://typora.io) or [Visual Studio Code](https://code.visualstudio.com/).

### Other formats

To generate alternate file formats from a Markdown file -- for example, Word, HTML, or PDF -- follow the instructions below.

#### Install

Create a conda environment called `writing` and install pandoc and pandoc-mustache:

```bash
conda create --name writing pip
conda activate writing
conda install -c conda-forge pandoc
pip install -U pandoc-mustache
 ```

#### Run

From the `code` directory, run the command `./pandoc.sh path/to/markdown/*.md`, where "path/to/markdown" is a directory containing one or more Markdown protocols you want to convert. This script does the following for each Markdown file:

* Create a file called `mustache.yaml` with all the YAML terms from the frontmatter.
* Replace the YAML frontmatter with a single line `mustache: mustache.yaml` in the Markdown document `mustache.yaml`. Note: Only YAML terms in this separate YAML file will be readable. Other YAML frontmatter in the Markdown document is ignored by pandoc.
* Run pandoc with the command `pandoc protocol.md --filter pandoc-mustache -o protocol.docx` to generate the Word file. Change the extension of the output file from ".docx" to ".html" or ".pdf" to generate an HTML or PDF file, respectively.

## Disclaimer  
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an 'as is' basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.
