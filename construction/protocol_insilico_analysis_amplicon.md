---
# MIOP terms
methodology category: 
project: 
purpose: 
analyses: 
geographic location: 
broad-scale environmental context: 
local environmental context: 
environmental medium: 
target: 
creator: 
materials required: 
skills required: 
time required: 
personnel required: 
language: 
issued: 
audience: 
publisher: 
hasVersion: 
license: 
maturity level: 

# FAIRe terms
sop_bioinformatics: 
trim_method: 
trim_param: 
demux_tool: 
demux_max_mismatch: 
merge_tool: 
merge_min_overlap: 
min_len_cutoff: 
min_len_tool: 
error_rate_tool: 
error_rate_type: 
error_rate_cutoff: 
chimera_check_method: 
chimera_check_param: 
otu_clust_tool: 
otu_clust_cutoff: 
min_reads_cutoff: 
min_reads_cutoff_unit: 
min_reads_tool: 
otu_db: 
otu_db_custom: 
tax_assign_cat: 
otu_seq_comp_appr: 
tax_class_id_cutoff: 
tax_class_query_cutoff: 
tax_class_collapse: 
tax_class_other: 
screen_contam_method: 
screen_geograph_method: 
screen_nontarget_method: 
screen_other: 
otu_raw_description: 
otu_final_description: 
bioinfo_method_additional: 
input_read_count: 
output_read_count: 
output_otu_num: 
otu_num_tax_assigned: 
---

# NOAA/AOML Amplicon Analysis Protocol Using Tourmaline 2

# 1-BACKGROUND

## Methods

Tourmaline builds on the latest methods for analysis of microbial and eDNA amplicon sequence data. This section describes those methods and provides tutorials for some of them.

### Amplicon sequence variants

Amplicon sequencing (metabarcoding) is a method whereby a single DNA locus in a community of organisms is PCR-amplified and sequenced. Two methods of amplicon sequence processing are supported, both of which generate ASVs (amplicon sequence variants), which approximate the "true" or "exact" sequences in a sample, rather than OTUs (operational taxonomic units), which blur sequencing errors and microdiversity through clustering:

* [DADA2](https://github.com/benjjneb/dada2) implements a quality-aware model of Illumina amplicon errors to infer sample composition by dividing amplicon reads into partitions consistent with the error model ([Callahan et al., 2016](https://doi.org/10.1038/nmeth.3869)).
* [Deblur](https://github.com/biocore/deblur) is a greedy deconvolution algorithm based on known Illumina read error profiles ([Amir et al., 2017](https://doi.org/10.1128/mSystems.00191-16)).

### QIIME 2 

[QIIME 2](https://qiime2.org/) ([Bolyen et al., 2019](https://doi.org/10.1038/s41587-019-0209-9)) is one of the most popular amplicon sequence analysis software tools available. It supports both DADA2 and Deblur denoising algorithms as well as a variety of downstream diversity and statistical analyses and visualizations. [Click here for a tutorial on QIIME 2.](https://github.com/aomlomics/tutorials/tree/master/qiime2)

### Snakemake

[Snakemake](https://snakemake.readthedocs.io/en/stable/) is a workflow management software that allows for reproducible and scalable workflows for bioinformatics and other data analyses. It keeps track of input and output files, storing output files in a logical directory structure. It uses rules to define commands and only runs rules when they are required to produce the desired output. [Click here for a tutorial on Snakemake.](https://github.com/aomlomics/tutorials/tree/master/snakemake)

## Assessing your data

Before starting any bioinformatics workflow, it is important to assess your data and metadata to decide how they need to be formatted and inform your parameter choices. The questions below can help determine the best parameters for processing and to be able to evaluate the success of your completed workflow.

### Amplicon locus

* What is the locus being amplified, and what are the primer sequences?
* How much sequence variation is expected for this locus (and primer sites) and dataset?
* Is the expected sequence variation enough to answer my question?
* What is the expected amplicon size for this locus and dataset?

### Sequence data

* What type and length of sequencing was used? (e.g., MiSeq 2x150bp)
* Were all my samples sequenced in the same sequencing run? (Rule `check_illumina_run` will check for this.)
* Do I have long enough sequening to do paired-end analysis, or do I have to do single-end analysis only?
* Has the relevant sequence pre-processing been done already: Demultiplexing? Quality filtering and/or trimming? Primer removal? FastQC/MultiQC profiling before and/or after filtering/trimming? (Note on quality trimming: If you plan on using DADA2 for denoising, the developers recommend no quality trimming be done before running, as it confuses the error profiling algorithm of DADA2. Quality filtering including complete removal of erroneous sequences is still advisable.)

### Sample set and metadata

* Is my metadata file complete? Are the relevant parameters of my dataset present as numeric or categorical variables?
* Do I have enough samples in each group of key metadata categories to determine an effect?

## Workflow overview

The table below describes the basic steps of the Tourmaline workflow. Further instructions are provided in the sections [Setup](https://github.com/aomlomics/tourmaline/wiki/3-Setup) and [Run](https://github.com/aomlomics/tourmaline/wiki/4-Run).

In the file paths below, `{method}` is one of:

* `dada2-pe` (paired-end DADA2)
* `dada2-se` (single-end DADA2)
* `deblur-se` (single-end Deblur)

and `{filter}` is one of:

* `unfiltered` (representative sequences and feature table *are not* filtered by taxonomy or feature ID)
* `filtered` (representative sequences and feature table *are* filtered by taxonomy or feature ID)

| Step                                | Command                        | Output                                                       |
| ----------------------------------- | ------------------------------ | ------------------------------------------------------------ |
| Format input and configuration file | (ad hoc)                       | `config.yaml`, `Snakefile`, `00-data/metadata.tsv`, `00-data/manifest_se.tsv`, `00-data/manifest_pe.tsv`, `00-data/refseqs.fasta` or `01-imported/refseqs.qza`, `00-data/reftax.tsv` or `01-imported/reftax.qza` |
| Import data                         | `snakemake {method}_denoise`   | `01-imported/` (multiple files)                              |
| Denoising                           | `snakemake {method}_denoise`   | `02-output-{method}/00-table-repseqs/` (multiple files)      |
| Taxonomic assignment    | `snakemake {method}_taxonomy_{filter}` | `02-output-{method}/01-taxonomy` (multiple files) |
| Representative sequence curation    | `snakemake {method}_diversity_{filter}` | `02-output-{method}/02-alignment-tree` (multiple files) |
| Core diversity analyses             | `snakemake {method}_diversity_{filter}` | `02-output-{method}-{filter}/03-alpha-diversity/` `02-output-{method}-{filter}/04-beta-diversity/` (multiple files) |
| Report                              | `snakemake {method}_report_{filter}`    | `03-reports/report_{method}_{filter}.html`                            |


# 2-INSTALL

## Dependencies

Tourmaline requires the following software:

* Conda
* QIIME 2 version 2023.5
* QIIME 2 plugins: deicode, empress
* Snakemake 
* Python packages: biopython, tabulate
* R packages: msa, odseq
* Multiple sequence alignment tools: clustalo, muscle v5
* Other command-line tools: pandoc

## Installation options

### Option 1: Native installation

The native installation builds on the Conda installation of QIIME 2. 

#### Conda

First, if you don't have Conda installed on your machine, install [Miniconda](https://conda.io/miniconda.html) for your operating system (Python 3.8+ version).

#### Snakemake

Second, install snakemake into its own environment. 

```
conda create -c conda-forge -c bioconda -n snakemake snakemake-minimal
```

#### QIIME 2

Third, install QIIME 2 in a Conda environment, if you haven't already. See the instructions at [qiime2.org](https://docs.qiime2.org/2023.5/install/native/). For example, on macOS these commands will install QIIME 2 inside a Conda environment called `qiime2-2023.5` (for Linux, change "osx" to "linux"):

```
wget https://data.qiime2.org/distro/core/qiime2-2023.5-py38-osx-conda.yml
conda env create -n qiime2-2023.5 --file qiime2-2023.5-py38-osx-conda.yml
```

#### Snakemake and other dependencies

Third, activate your QIIME 2 environment and install dependencies:

```
conda activate qiime2-2023.5
conda install -c conda-forge -c bioconda biopython muscle clustalo tabulate
conda install -c conda-forge deicode
pip install empress
qiime dev refresh-cache
conda install -c bioconda bioconductor-msa bioconductor-odseq
```

### Option 2: Docker container

An alternative to the native installation is a Docker container. Here are the steps to follow:

#### Docker Desktop

Make sure Docker is installed on your system. If you are using a laptop or desktop machine, you can [install](https://docs.docker.com/get-docker/) Docker Desktop (Mac or Windows) or Docker (Linux). If you are on a compute cluster, you may need to contact your system administrator. This command will list your Docker images and make sure the Docker daemon is running:

```
docker images
```

Make sure Docker has enough memory. On Docker for Mac, the default memory is 2 GB. Go to Preferences -> Resources -> Advanced -> Memory and increase the maximum memory to 8 GB or more if possible.

#### Docker image

Download the [Tourmaline Docker image](https://hub.docker.com/repository/docker/aomlomics/tourmaline) from DockerHub:

```
docker pull aomlomics/tourmaline
```

List your Docker images again to make sure the `tourmaline` image is there:

```
docker images
```

#### Docker container

Now create and run a container:

```
docker run -v $HOME:/data -it aomlomics/tourmaline
```

If installing on a Mac with an Apple M1 chip, run the Docker image with the `--platform linux/amd64` command. It will take a few minutes for the image to load the first time it is run.

```
docker run --platform linux/amd64 -v $HOME:/data -it aomlomics/tourmaline
```

#### External files

The `-v` (volume) flag above allows you to mount a local file system volume (in this case your home directory) to read/write from your container. Note that symbolic links in a mounted volume will not work.

Use mounted volumes to:

* copy metadata and manifest files to your container;
* create symbolic links from your container to your FASTQ files and reference database;
* copy your whole Tourmaline directory out of the container when the run is completed (alternatively, you can clone the Tourmaline directory inside the mounted volume).

To access files that aren't on a mounted volume, from outside the container (running or not), use these commands:

```
docker cp container:source_path destination_path # container to file system
docker cp source_path container:destination_path # file system to container
```

#### Common errors

If you get an error "Plugin error from feature-classifier: Command ... died with <Signals.SIGKILL: 9>.", this means your Docker container ran out of memory. Go to Preferences -> Resources -> Advanced -> Memory and increase the maximum memory to 8 GB or more if possible.

#### Restart a container

You can stop a container by typing `exit`. The container will still be running.

See all your containers with this command:

```
docker ps -a
```

Start a container using its container ID or name with this command:

```
docker start -ia CONTAINER
```

#### Remove containers and images

Remove a Docker container:

```
docker container rm CONTAINER
```

Remove a Docker image:

```
docker rmi IMAGE
```

Remove all stopped containers, all networks not used by at least one container, all images without at least one container associated to them, and all build cache:

```
docker system prune -a
```

# 3-SETUP

## Clone the Tourmaline directory

*Download the Tourmaline directory and files.*

Every time you run Tourmaline on a new dataset—or with new parameters on the same dataset—you will clone (download) a fresh copy of the Tourmaline GitHub repository (directory and contents) to your computer. This allows Snakemake to run smoothly without having to account for previous inputs and outputs. If you don't want to save the output from a previous run, it is fine to delete the output and re-run the Tourmaline commands in the same directory.

Navigate to your project directory and clone the Tourmaline repository there. If using the Docker container, a good place to use as your project directory is `/data`:

```
cd /data # or your project directory
git clone https://github.com/aomlomics/tourmaline.git
```

Rename the `tourmaline` directory to something else before working in it. We recommend adding the name of the project (e.g., `tourmaline-test` or `tourmaline-myproject`) and/or the date (e.g., `tourmaline-test-YYYYMMDD`). For example:

```
mv tourmaline tourmaline-test
```

## Initialize from an existing Tourmaline directory

*Setup a new Tourmaline run with the parameters from a previous run (optional).*

If you want to re-run Tourmaline on an existing dataset with a new set of parameters (and keep the output from your old parameters), you'll want to clone a fresh copy of the Tourmaline GitHub repository but then initialize it with all the parameters, files, and links you set up before. 

##### Script to initialize Tourmaline directory

After you clone a fresh copy of the Tourmaline GitHub repository, go inside that newly downloaded Tourmaline directory and run the script ***initialize_dir_from_existing_tourmaline_dir.sh***. This will copy `config.yaml` from an existing Tourmaline directory, remove the test files, then copy the data files and symlinks from the existing Tourmaline directory.

From the new Tourmaline top-level directory, run this:

```
scripts/initialize_dir_from_existing_tourmaline_dir.sh /path/to/tourmaline-existing
```

You may get error messages if some files don't exist, but it should have copied the files that were there. The files that will be copied from the existing directory to the new directory are:

```
config.yaml
00-data/manifest_pe.csv
00-data/manifest_se.csv
00-data/metadata.tsv
00-data/repseqs_to_filter_dada2-pe.tsv
00-data/repseqs_to_filter_dada2-se.tsv
00-data/repseqs_to_filter_deblur-se.tsv
01-imported/refseqs.qza
01-imported/reftax.qza
01-imported/classifier.qza
```

Check all the files. If everything looks good, you can breeze through the rest of the setup. You only need to make any new changes you want to the parameters in `config.yaml`. In some cases you may want to delete files you want to be regenerated.  

If you manually copy over output files from a previous Tourmaline run that you do not want to be regenerated (eg, 02-output-{method}-unfiltered), you should use the `cp -p` flag to preserve timestamps.

```
cp -rp tourmaline-old/02-output-dada2-pe-unfiltered/ tourmaline-new/
```

## Config file 

*Edit the config file to contain the file paths and parameters you want to use.*

The configuration file—named `config.yaml` and residing in the top-level directory—contains all of the parameters that are editable for a Tourmaline run. Always make sure the parameters are appropriate for your dataset. (Note: If you are comfortable editing Python code, it is possible to change more parameters by editing `Snakefile`.)

#### Test data: review the config file

The configuration file `config.yaml` comes ready to run with the test data. Note: Because the sequencing depth of the test dataset is very low (1000 sequences per sample) and the sequences are long (2x300 bp; 269 and 268 bp after trimming primers) relative to the sequenced amplicon length (~316 bp), several of the parameters in the config file may not be appropriate for a normal run of Tourmaline.

Below are the full contents of `config.yaml` with the default settings:

```
# config.yaml - configuration file for the Tourmaline Snakemake workflow
# Compatable with qiime2-2023.5
# User MUST edit these parameters before running their own data.
# Detailed instructions: https://github.com/aomlomics/tourmaline/wiki.

# METADATA FILE

# Metadata file must be named as follows (or use symbolic link):
# - 00-data/metadata.tsv

# Standardization is recommended through use of MIxS/MIMARKS (https://gensc.org/mixs/) column headers, for example:
# - submitted_to_insdc: {boolean}
# - investigation_type: [eukaryote|bacteria_archaea|plasmid|virus|organelle|metagenome|metatranscriptome|mimarks-survey|mimarks-specimen|misag|mimag|miuvig]
# - project_name: {text}
# - experimental_factor (text or EFO and/or OBI): {termLabel} {[termID]}|{text}
# - lat_lon (decimal degrees): {float} {float}

# FASTQ DATA (choose one option)

# Option 1 - if you want to start from manifest files and import per-sample fastq sequences,
# Name your manifest file(s) as follows (or use symbolic links):
# - paired-end sequences: 00-data/manifest_pe.csv
# - single-end sequences: 00-data/manifest_se.csv

# Option 2 - if your fastq sequences are already archived in qza format,
# Name your qza file(s) as follows (or use symbolic links):
# - paired-end sequences: 01-imported/fastq_pe.qza
# - single-end sequences: 01-imported/fastq_se.qza

# REFERENCE DATABASE (choose one option)

# Option 1 - if your reference database is not yet imported, 
# Name your reference fna and tsv files as follows (or use symbolic links):
# - reference sequences: 00-data/refseqs.fna
# - reference taxonomy: 00-data/reftax.tsv

# Option 2 - if your reference database is already archived in qza format,
# Name your your qza files as follows (or use symbolic links):
# - reference sequences: 01-imported/refseqs.qza
# - reference taxonomy: 01-imported/reftax.qza

# Provide a descriptive name for the reference database used, no spaces (e.g., original file name, source and version)
database_name: silva-138-99-515-806_q2-2021.2

# DENOISE

# DADA2 PAIRED-END
# For more info run: qiime dada2 denoise-paired --help

dada2pe_trunc_len_f: 240
dada2pe_trunc_len_r: 190
dada2pe_trim_left_f: 0
dada2pe_trim_left_r: 0
dada2pe_max_ee_f: 2
dada2pe_max_ee_r: 2
dada2pe_trunc_q: 2
dada2pe_pooling_method: independent
dada2pe_chimera_method: consensus
dada2pe_min_fold_parent_over_abundance: 1
dada2pe_n_reads_learn: 1000000
dada2pe_hashed_feature_ids: --p-hashed-feature-ids

# DADA2 SINGLE-END
# For more info run: qiime dada2 denoise-single --help

dada2se_trunc_len: 240
dada2se_trim_left: 0
dada2se_max_ee: 2
dada2se_trunc_q: 2
dada2se_pooling_method: independent
dada2se_chimera_method: consensus
dada2se_min_fold_parent_over_abundance: 1
dada2se_n_reads_learn: 1000000
dada2se_hashed_feature_ids: --p-hashed-feature-ids

# DEBLUR SINGLE-END
# For more info run: qiime deblur denoise-other --help

deblur_trim_length: 240
deblur_sample_stats: --p-sample-stats
deblur_mean_error: 0.005
deblur_indel_prob: 0.01
deblur_indel_max: 3
deblur_min_reads: 10
deblur_min_size: 2
deblur_hashed_feature_ids: --p-hashed-feature-ids

# TAXONOMIC CLASSIFICATION

# Taxonomic classification of the representative sequences.
# - method: choose from: naive-bayes, consensus-blast, consensus-vsearch
# - parameters: add arbitrary parameters or at least one parameter; see "qiime feature-classifier COMMAND --help"
# For more info run: qiime feature-classifier [fit-classifier-naive-bayes|classify-sklearn|classify-consensus-blast|classify-consensus-vsearch] --help
classify_method: consensus-vsearch
classify_parameters: --verbose

# Table of feature counts per sample collapsed by chosen taxonomic level.
# taxa_level - taxonomic level at which the features should be collapsed. Default 7
# For more info run: qiime taxa collapse --help
classify_taxalevel: 7

# MULTIPLE SEQUENCE ALIGNMENT

# Multiple sequence alignment of the representative sequences.
# - method: choose from: muscle v5, clustalo, mafft
# - muscle_iters: number of refinement iterations (integer, default 100)
# For more info run: muscle, clustalo --help, qiime alignment [mafft|mask] --help

alignment_method: muscle
alignment_muscle_iters: 50

# OUTLIER DETECTION

# Representative sequence outlier detection using odseq.
# - distance_metric: choose from: linear, affine
# - bootstrap_replicates: number of bootstrap replicates (integer)
# - threshold: probability to be at right of the bootstrap scores distribution (float)
# For more info see: https://www.bioconductor.org/packages/release/bioc/html/odseq.html

odseq_distance_metric: linear
odseq_bootstrap_replicates: 100
odseq_threshold: 0.025

# SUBSAMPLING (RAREFACTION)

# Subsample (rarefy) data to have an even number of observations per sample.
# - core_sampling_depth: subsampling depth for core diversity analyses
# - alpha_max_depth: maximum subsampling depth for alpha diversity rarefaction analysis

core_sampling_depth: 500
alpha_max_depth: 500

# BETA GROUP SIGNIFICANCE

# Statistical test for difference between samples grouped by a metadata variable (column).
# - column: metadata column to test beta group significance; this column must appear in the metadata file 00-data/metadata.tsv
# - method: choose from: permanova, anosim, permdisp
# - pairwise: choose from: --p-no-pairwise, --p-pairwise (can be very slow)

beta_group_column: region
beta_group_method: permanova
beta_group_pairwise: --p-pairwise

# DEICODE BETA DIVERSITY

# Robust Aitchison PCA (and biplot ordination) with automatically estimated underlying low-rank structure.
# Parameters are set to recommended defaults:
# - min_sample_count: minimum sum cutoff of samples across all features
# - min_feature_count: minimum sum cufoff of features across all samples
# - min_feature_frequency: minimum percentage of samples a feature must appear with value greater than zero
# - max_iterations: number of iterations to optimize the solution
# - num_features: number of most important features (arrows) to display in the biplot ordination
# For more info run: qiime deicode auto-rpca --help

deicode_min_sample_count: 500
deicode_min_feature_count: 10
deicode_min_feature_frequency: 0
deicode_max_iterations: 5
deicode_num_features: 5

# REPORT THEME

# Report theme for html version.
# Choose from: github, gothic, newsprint, night, pixyll, whitey.

report_theme: github

# FILTERING

# Filtering is implemented by filtering commands only, eg "snakemake dada2_pe_report_filtered", and is applied to each of
# representative sequences, taxonomy, and feature table.

# FILTER SAMPLES BY ID
# The file of sample IDs to be removed must have the sample IDs in the 1st column with a header line. Any number of additional columns can be added.
# The file must be named 00-data/samples_to_filter_{method}.tsv, where method is dada2-pe, dada2-se, or deblur-se.
# For more info run: qiime feature-table filter-samples --help
# TO SKIP FILTERING BY SAMPLE ID: provide a file with only headers (default) or don't run filtering commands.

# FILTER SAMPLES BY METADATA
# Samples can be removed or retained based on their metadata, using SQLite WHERE-clause syntax inside double quotes.
# For more info run: qiime feature-table filter-samples --help
# TO SKIP FILTERING BY SAMPLE METADATA: provide "none" (default) or don't run filtering commands.
# EXAMPLE: "[region]='Open Water'"
metadata_filter: none

# FILTER BY FEATURE ID
# The file of feature IDs to be filtered must have a header line with two columns: 1. "featureid", 2. anything.
# The file must be named 00-data/repseqs_to_filter_{method}.tsv, where method is dada2-pe, dada2-se, or deblur-se.
# If filtering outliers, just copy 02-output-{method}-{filter}/02-alignment-tree/repseqs_to_filter_outliers.tsv to the above filename.
# Add any additional feature IDs to be filtered (no duplicates allowed).
# For more info run: qiime feature-table [filter-seqs|filter-features] --help
# TO SKIP FILTERING BY FEATURE ID: provide only nonsense feature IDs in the above files (default) or don't run filtering commands.

# FILTER BY TAXONOMY
# Features with taxonomy containing these terms will be filtered.
# Separate terms with commas (e.g., mitochondria,chloroplast,eukaryota,unassigned).
# Terms are not case-sensitive.
# For more info run: qiime taxa filter-seqs --help
# TO SKIP FILTERING BY TAXONOMY: provide a nonsense term or don't run filtering commands.

exclude_terms: eukaryota,archaea,mitochondria,chloroplast,unassigned

# FILTER BY LENGTH
# Set minimum and maximum sequence lengths to filter representative sequences by.
# Limits are inclusive, ie, greater than or equal to minimum, less than or equal to maximum.
# For more info run: qiime feature-table filter-seqs --help
# TO SKIP FILTERING BY LENGTH: set values to extreme values, eg (0, 10000) or don't run filtering commands.

repseq_min_length: 0
repseq_max_length: 260

# FILTER BY ABUNDANCE & PREVALENCE
# Set minimum abundance/prevalence limits for filtering.
# Values are floats range(0,1)
# Limit is inclusive, ie, greater than or equal to minimum. Samples with frequency of 0 after filtering will also be removed.
# For more info run: qiime feature-table filter-features-conditionally --help
# TO SKIP FILTERING BY ABUNDANCE/PREVALENCE: set values to 0 or don't run filtering commands.

repseq_min_abundance: 0.01
repseq_min_prevalence: 0.1

# THREADS

# Max number of threads for individual rules.
# Threads used will be the lower of this and snakemake parameter --cores.
# Parameter other_threads is used for all other rules, regardless if they can use multiple threads, 
# because it prevents multiple rules from running simultaneously with --cores >1.

dada2pe_threads: 8
dada2se_threads: 8
deblur_threads: 8
alignment_threads: 8
feature_classifier_threads: 8
phylogeny_fasttree_threads: 8
diversity_core_metrics_phylogenetic_threads: 8
other_threads: 8
```

#### Your data: edit parameters customized to your data and analysis

Edit the configuration file `config.yaml` to change DADA2/Deblur parameters, subsampling (rarefaction) depth, multiple sequence alignment method, taxonomic classification method, and others parameters. You cannot change the input filenames in the sections "METADATA FILE", "FASTQ DATA" and "REFERENCE DATABASE"; you can either rename your files to match the standard filenames or use symbolic links to point your files to those filenames. You should consider changing the following parameters:

| Parameter                                                    | Description                                                  | Recommendation                                               | Help                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `dada2pe_trunc_len_f` `dada2pe_trunc_len_r` `dada2se_trunc_len` | Truncate bases (integer) from the 3' (right) ends of reads in DADA2. | Choose values that maximize length but remove low-quality ends. Note that DADA2 paired-end mode requires a minimum overlap of 12 bp to merge Read 1 and Read 2. See the section below "Sequence quality control and choice of truncation length" for instructions on using the included script *fastqc_per_base_sequence_quality_dropoff.py*. | [dada2 denoise-paired](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-paired/); [dada2 denoise-single](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-single/) |
| `dada2pe_trim_left_f` `dada2pe_trim_left_f` `dada2se_trim_left` | Trim bases (integer) from the 5' (left) ends of reads in DADA2. | Depending on your amplicon sequencing method, and if trimming was not done prior to running Tourmaline, you may have primer sequences, indexes, and/or adapters on the 5' ends of your reads. If so, set this parameter to remove those bases. If not, set this parameter to zero. Note that 5' trimming (this parameter) is done *after* 3' truncation (above parameter). | [dada2 denoise-paired](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-paired/); [dada2 denoise-single](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-single/) |
| `deblur_trim_length`                                         | Truncate bases (integer) from the 3' (right) ends of reads in Deblur. | Choose values that maximize length but remove low-quality ends. See the section below "Sequence quality control and choice of truncation length" for instructions on using the included script *fastqc_per_base_sequence_quality_dropoff.py*. | [deblur denoise-other](https://docs.qiime2.org/2023.5/plugins/available/deblur/denoise-other/) |
| `dada2pe_pooling_method` `dada2se_pooling_method`            | DADA2 pooling method.                                        | Choose `pseudo` for pseudo-pooling or `independent` for no pooling. | [dada2 denoise-paired](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-paired/); [dada2 denoise-single](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-single/) |
| `dada2pe_chimera_method` `dada2se_chimera_method`            | DADA2 chimera method.                                        | Choose `pooled` if pseudo-pooling otherwise `consensus` or `none`. | [dada2 denoise-paired](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-paired/); [dada2 denoise-single](https://docs.qiime2.org/2023.5/plugins/available/dada2/denoise-single/) |
| `alignment_method`                                           | Multiple sequence alignment method.                          | Choose `muscle` or `clustalo` for best accuracy or `mafft` for faster results. | [muscle](https://www.drive5.com/muscle/); [clustalo](http://www.clustal.org/omega/); [mafft](https://docs.qiime2.org/2023.5/plugins/available/alignment/) |
| `classify_method`                                            | Taxonomic classification method.                             | Choose `naive-bayes` for best accuracy or `consensus-blast` for faster results. | [feature-classifier](https://docs.qiime2.org/2023.5/plugins/available/feature-classifier/) |
| `exclude_terms`                                              | Filter terms (taxa) from taxonomy.                           | Specify terms (comma-separated, no spaces) to find in taxonomy and filter out (case-insensitive), or provide a nonsense term to skip this step when filtering. | [taxa filter-seqs](https://docs.qiime2.org/2023.5/plugins/available/taxa/filter-seqs/) |
| `repseq_min_length` `repseq_max_length`                      | Set minimum and maximum sequence lengths to filter representative sequences by. | Limits are inclusive, i.e., sequences will be retained if greater than or equal to minimum, less than or equal to maximum. Leave defaults (0, 10000) to do no filtering. | link                                                         |
| `repseq_min_abundance` `repseq_min_prevalence`               | set minimum abundance and prevalence limits to filter representative sequences by. | Limit is inclusive, i.e., sequences will be retained if greater than or equal to minimum. Leave default (0) to do no filtering. |                                                              |
| `odseq_distance_metric`                                      | Distance metric for odseq.                                   | Choose metric from: `linear`, `affine`.                      | [odseq](https://www.bioconductor.org/packages/release/bioc/html/odseq.html) |
| `odseq_bootstrap_replicates`                                 | Number (integer) of bootstrap replicates for odseq.          | Choose more replicates for more robust detection of outliers, fewer replicates for faster processing. | [odseq](https://www.bioconductor.org/packages/release/bioc/html/odseq.html) |
| `odseq_threshold`                                            | Threshold (float) for bootstrap probability distribution for odseq. | Probability to be at the right of the bootstrap scores distribution when computing outliers. Tune this parameter depending on the diversity and occurrence of outliers in the MSA. | [odseq](https://www.bioconductor.org/packages/release/bioc/html/odseq.html) |
| `core_sampling_depth`                                        | Rarefaction depth (integer) for core diversity metrics.      | Choose a value that balances sequencing depth (more is better) with number of samples retained (more is better). | [diversity core-metrics-phylogenetic](https://docs.qiime2.org/2023.5/plugins/available/diversity/core-metrics-phylogenetic/) |
| `alpha_max_depth`                                            | Rarefaction depth (integer) for alpha rarefaction.           | Choose a value that balances sequencing depth (more is better) with number of samples retained (more is better). | [diversity alpha-rarefaction](https://docs.qiime2.org/2023.5/plugins/available/diversity/alpha-rarefaction/) |
| `beta_group_column`                                          | Column (text) in your metadata to test beta-diversity group significance. | Choose a category that may differentiate your samples. This analysis can be rerun with different columns by renaming the output file and changing the value in *config.yaml* before running again. | [diversity beta-group-significance](https://docs.qiime2.org/2021.2/plugins/available/diversity/beta-group-significance/) |
| `report_theme`                                               | HTML report theme.                                           | Choose from: `github`, `gothic`, `newsprint`, `night`, `pixyll`, `whitey`. | [Typora theme gallery](https://theme.typora.io/)             |

## Reference database

*Format reference sequences and taxonomy for QIIME 2, if not done already.*

Reference sequences and taxonomy are used by QIIME 2 to assign taxonomy to the representative sequences you get from DADA2 and Deblur. Any marker gene (amplicon locus) can be used with Tourmaline. The only requirement is that the reference sequence (.fasta) and taxonomy (.tsv) files are formatted for QIIME 2: the sequence IDs in the two files must match, and the taxonomy must have two tab-delimited columns where the second column is taxonomic levels delimited by semicolons. Here is what they should look like (shortened for simplicity):

`refseqs.fna`

```
>AB302407.1.2962
TCCGGTTGATCCTGCCGGACCCGACCGCTATCGGGGTAGGGCTAAGCCATGCGA
>KU725476.45629.48552
AGAGTTTGATCCTGGCTCAGGATGAACGCTGGCGGCATGCTTAACACATGCAAG
```

`reftax.tsv`

```
AF352532.1.1501	D_0__Bacteria;D_1__Patescibacteria;D_2__Parcubacteria;D_3__GW2011-GWA2-46-7
KM650414.1.1439	D_0__Bacteria;D_1__Firmicutes;D_2__Clostridia;D_3__Clostridiales
```

The reference sequence (.fasta) and taxonomy (.tsv) files, and their derived QIIME 2 archives (.qza), can be used for multiple studies and need only exist in one place on your computer. Therefore, it is best to store these files in a special directory for databases—for example, in a directory named `~/databases/qiime2`—then create symbolic links to them in the respective project subdirectories (you'll see how to do this below).

When you run Snakemake, if you get an error like, "Missing input files for rule import_ref_seqs: 00-data/refseqs.fna", you can fix this either by placing the reference sequence (.fasta) and taxonomy (.tsv) files in `00-data` or by placing their derived QIIME 2 archives (.qza) in `01-imported`. You will do the latter below.

If using the 'naive-bayes' taxonomy classifier, you can optionally provide only a pre-trained classifier in QIIME 2 format (.qza). 

#### Test data: download reference database and create symbolic links

The small test dataset included with Tourmaline is a 16S rRNA amplicon dataset sequenced using the 515F-806R primers, so we will download a 16S+18S reference database trimmed to this region (Silva 138 SSURef NR99 515F/806R region sequences and taxonomy). Please note the citations and license for this dataset [here](https://docs.qiime2.org/2023.5/data-resources/#silva-16s-18s-rrna).

```
cd ~/databases/qiime2
wget https://data.qiime2.org/2021.2/common/silva-138-99-seqs-515-806.qza
wget https://data.qiime2.org/2021.2/common/silva-138-99-tax-515-806.qza
```

Now navigate to the directory `01-imported` inside your new Tourmaline directory:

```
cd /path/to/tourmaline-test/01-imported
```

Create symbolic links to the database files:

```
ln -s ~/databases/qiime2/silva-138-99-seqs-515-806.qza refseqs.qza
ln -s ~/databases/qiime2/silva-138-99-tax-515-806.qza reftax.qza
```

#### Your data: format and import your reference database

There are three options for setting up your QIIME 2 reference database files. In each case, the underlying reference sequence (.fna) and taxonomy (.tsv) text files have to follow the QIIME 2 format.

A QIIME 2 reference sequence (.fna) file looks like this:

```
>AB302407
TCCGGTTGATCCTGCCGGACCCGACCGCTATCGGGGTAGGGCTAAGCCATGCGAGTCGCGCGCCCGGGGGCGCCCGGGAG
>KU725476
AGAGTTTGATCCTGGCTCAGGATGAACGCTGGCGGCATGCTTAACACATGCAAGTCGGACGTTGTCTTCAAATTAGAATA
>KP109803
AGAGTTTGATCCTGGCTCAGAATGAACGCTAGCGATATGCTTAACACATGCAAGTCGAACGTTGTCTTCAAATTAGAATA
```

A QIIME 2 reference taxonomy (.tsv) file looks like this (sequence IDs must match those in the sequence file, not necessarily in the same order):

```
AB302407<TAB>D_0__Archaea;D_1__Crenarchaeota;D_2__Thermoprotei;D_3__Thermoproteales;D_4__Thermoproteaceae;D_5__Pyrobaculum;D_6__Pyrobaculum sp. M0H
KU725476<TAB>D_0__Bacteria;D_1__Proteobacteria;D_2__Alphaproteobacteria;D_3__Rickettsiales;D_4__Mitochondria;D_5__Sphagnum girgensohnii;D_6__Sphagnum girgensohnii
KP109803<TAB>D_0__Bacteria;D_1__Proteobacteria;D_2__Alphaproteobacteria;D_3__Rickettsiales;D_4__Mitochondria;D_5__Sphagnum palustre;D_6__Sphagnum palustre
```

##### Option 1 (import reference database using Tourmaline)

Start with the reference sequence and taxonomy files and let Tourmaline create the QIIME 2 archives (.qza). Place the text files (or symbolic links to them) in `00-data` and Tourmaline will create the latter for you in `01-imported`. For example, if your Tourmaline directory is `/path/to/tourmaline-myproject` and your (QIIME 2-ready) reference sequences and taxonomy are in `~/databases/qiime2/16s`, you could create symbolic links them using the commands below (you can change the filenames `refseqs.fna` and `reftax.tsv` in `config.yaml`, but we don't recommend it):

```
cd /path/to/tourmaline-myproject/00-data
ln -s ~/databases/qiime2/16s/16s_refseqs.fna refseqs.fna
ln -s ~/databases/qiime2/16s/16s_reftax.tsv reftax.tsv
```

##### Option 2 (import reference database on your own or use pre-imported database)

Import your reference database files to .qza files yourself before running Tourmaline, or use the .qza files from a previous run or the internet (e.g., the Silva .qza files mentioned above).

To import your own reference database files, use these commands:

```
qiime tools import \
--type 'FeatureData[Sequence]' \
--input-path 00-data/refseqs.fna \
--output-path 01-imported/refseqs.qza

qiime tools import \
--type 'FeatureData[Taxonomy]' \
--input-format HeaderlessTSVTaxonomyFormat \
--input-path 00-data/reftax.tsv \
--output-path 01-imported/reftax.qza
```

If you already have the .qza files, you can put them in your databases directory (somewhere on your computer) and create symbolic links to them in `01-imported`. Tourmaline will see these files and skip the step that creates them (you can change the filenames `refseqs.qza` and `reftax.qza` in `config.yaml`, but we don't recommend it):

```
cd /path/to/tourmaline-myproject/01-imported
ln -s ~/databases/qiime2/16s/16s_refseqs.qza refseqs.qza
ln -s ~/databases/qiime2/16s/16s_reftax.qza reftax.qza
```

**Advanced:** If you have extracted a specific region or created a naive Bayes classifier in a previous run, you can place these in `01-imported` also:

```
ln -s ~/databases/qiime2/16s/16s_refseqs_515f_806r.qza refseqs_extracted.qza
ln -s ~/databases/qiime2/16s/16s_classifier.qza classifier.qza
```

For Snakemake to work with these symbolic links, you may have to run `snakemake --cleanup-metadata <filenames>` on them first.

## Sequence files

*List fastq.gz files in a QIIME 2 FASTQ manifest tsv file(s), or use your pre-imported FASTQ QIIME 2 archive file(s).* 

Tourmaline requires that your amplicon sequence data is already demultiplexed. We strongly recommend checking if your sequences have primers prior to running Tourmaline, and either [trimming them yourself](https://github.com/aomlomics/tourmaline/wiki/3-Setup#remove-primers-if-necessary) or choosing the appropriate truncation and trimming parameters in the config file.  

There are two options to provide your sequence data:

Option 1 is to keep your data as per-sample fastq.gz files with a FASTQ manifest file and let Tourmaline create the FASTQ archive (.qza) file(s). The FASTQ manifest files—by default named `manifest_se.csv` and `manifest_pe.csv` and found in `00-data`—tell QIIME 2 where to find your FASTQ files and what samples they correspond to. See [QIIME 2 Docs](https://docs.qiime2.org/2023.5/tutorials/importing/#fastq-manifest-formats) for more information on FASTQ manifest files. Hint: Gzipped files like fastq.gz files can be viewed using `zcat` (or `gzcat` on Mac) and `zless`.

Option 2 is to use a pre-imported .qza file (QIIME 2 archive), which already contains your demultiplexed sequences and a manifest file. 

#### Test data: edit the manifest file to match your filepath

We'll use Option 1 (FASTQ manifest and individual fastq.gz files) for the test data. The test sequence data were subsampled to 1000 sequences per sample and are provided in `00-data`. They are already demultiplexed and in ".fastq.gz" format, and the file names match those in the FASTQ manifest files and metadata file. To run the test data, unless you are using the Docker container, you must edit the manifest files to point to the absolute filepaths of the sequences in your local copy of `tourmaline` (which you renamed to `tourmaline-test`). For example, if the filepath of your project is `/Users/me/myproject`, these commands will set up the manifest files appropriately:

```
cd /Users/me/myproject/tourmaline-test/00-data
cat manifest_pe.csv | sed 's|/data/tourmaline|/Users/me/myproject/tourmaline-test|' > temp
mv temp manifest_pe.csv 
cat manifest_pe.csv | grep -v "reverse" > manifest_se.csv
```

If you are using the Docker container and you cloned `tourmaline` into `/data`, you don't need to modify the manifest files!

#### Your data: choose manifest+sequences or pre-imported sequence artifact

First, delete the test fastq.gz files that came in directory `00-data`.

##### Demultiplex (if necessary)

If your sequences are not already demultiplexed, demultiplex them, then gzip the resulting per-sample FASTQ files. See the [QIIME 2 Docs](https://docs.qiime2.org/2023.5/tutorials/importing/) for more information on importing and demultiplexing FASTQ files. If your sequences are in multiplexed EMP format, you can use the commands `qiime tools import` to import them as type `EMPPairedEndSequences`, then `qiime demux emp-paired` to demuliplex them.

##### Remove primers (if necessary)

If primers sequences are present in your sequences, you can use QIIME 2's Cutadapt command to trim the primers. The commands below show how to trim **16S V4-V5 primers** from paired-end data and then format the output for Tourmaline processing:

1. Load paired-end 16S FASTQ files into QIIME 2. FASTQ files are stored in a subfolder (paired_reads). This will result in a .qza file with information on 16S sequences.

    ```
    qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' --input-path paired_reads --input-format CasavaOneEightSingleLanePerSampleDirFmt --output-path demux-paired-end-16S.qza
    ```

2. Run Cutadapt on the demultiplexed 16S reads to remove V4-V5 primers (change to your specific primers). 

    ```
    qiime cutadapt trim-paired --i-demultiplexed-sequences demux-paired-end-16S.qza --p-front-f GTGYCAGCMGCCGCGGTAA --p-adapter-f AAACTYAAAKRAATTGRCGG --p-front-r CCGYCAATTYMTTTRAGTTT --p-adapter-r TTACCGCGGCKGCTGRCAC --verbose --p-error-rate 0.2 --o-trimmed-sequences demux-trimmed-16S.qza
    ```

3. Export trimmed reads back to FASTQ file format in a new folder (16S-trimmed-reads). These reads can now be loaded into Tourmaline. And off you go with the protocol for the trimmed reads. 

    ```
    qiime tools export --input-path demux-trimmed-16S.qza --output-path 16S-trimmed-reads
    ```

If your amplicon length is shorter than your sequencing read length, you may need to do cutadapt in two steps, for example this strategy for 18S V9 primers with 250 bp paired-end sequencing:  

1. Load paired-end 18S FASTQ files into QIIME 2. FASTQ files are stored in a subfolder (paired_reads). This will result in a .qza file with information on 16S sequences.

    ```
    qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' --input-path paired_reads --input-format CasavaOneEightSingleLanePerSampleDirFmt --output-path demux-paired-end-18S.qza
    ```

2. Run Cutadapt on the demultiplexed 18S reads to remove V9 primers from the ends of reads (change to your specific primers). 

    ```
    qiime cutadapt trim-paired \
    --i-demultiplexed-sequences demux-paired-end-18S.qza \
    --p-adapter-f AGTAGGTGAACCTGCAGAAGGATC #reverse comp of reverse primer\
    --p-adapter-r GACGGGCGGTGTGTAC #reverse comp of fwd primer\
    --p-match-read-wildcards \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences trimmed_remove_primers_wild.qza
    ```

3. Run cutadapt again on your trimmed reads, this time trimming primers off the front and **only keeping trimmed sequences containing primers**. If this removes too many reads, you can try it withought the '--p-discard-untrimmed' option.

    ```
    qiime cutadapt trim-paired \
    --i-demultiplexed-sequences trimmed_remove_primers_wild.qza \
    --p-front-f GTACACACCGCCCGTC #forward primer\
    --p-front-r TGATCCTTCTGCAGGTTCACCTAC #reverse primer\
    --p-match-read-wildcards \
    --p-match-adapter-wildcards \
    --p-discard-untrimmed \
    --verbose \
    --o-trimmed-sequences trimmed_remove_primers_wild_2.qza
    ```

4. Export trimmed reads back to FASTQ file format in a new folder (18S-trimmed-reads). These reads can now be loaded into Tourmaline. And off you go with the protocol for the trimmed reads. 

    ```
    qiime tools export --input-path trimmed_remove_primers_wild_2.qza --output-path 18S-trimmed-reads
    ```

##### Option 1 (FASTQ manifest and individual fastq.gz files)

Find the location of your sequence data on your computer or external drive. It is recommended that you leave the sequences where they are and just tell Tourmaline where to find them using the FASTQ manifest file(s) in the next step.

Using the sample names in your metadata file and the absolute filepaths of the forward and reverse demultiplexed gzipped sequence files for each sample, create your FASTQ manifest file. Ensure the sample IDs match those in your metadata file. The included script `create_manifest_from_metadata.py` (see below) can help with this.

Tip: Create and finalize your paired-end manifest (*manifest_pe.csv*) first, then run this command to generate the single-end manifest (*manifest_se.csv*):

```
cat manifest_pe.csv | grep -v "reverse" > manifest_se.csv
```

Two scripts are provided to help you create your FASTQ manifest files:

***create_manifest_from_fastq_directory.py*** – Create a FASTQ manifest file from a directory of FASTQ files. This script makes the following assumptions: the first characters after the sample names are "\_S[0-9]{1,3}""; only Lane 1 data is present ("\_L001"); R1 and R2 files are both present; and only one file (with suffix "\_001") is present for each of R1 and R2.

```
scripts/create_manifest_from_fastq_directory.py /path/to/fastq \
00-data/manifest_pe.csv 00-data/manifest_se.csv
```

***match_manifest_to_metadata.py*** – Given a metadata file and a FASTQ manifest file, generate two new manifest files (paired-end and single-end) corresponding to the samples in the metadata file. This can be useful if you demultiplexed from "Earth Microbiome Project (EMP) protocol" format for paired-end reads and unzipped the output to get the manifest file.

```
scripts/match_manifest_to_metadata.py 00-data/metadata.tsv /path/to/demux/data/MANIFEST \
00-data/manifest_pe.csv 00-data/manifest_se.csv
```

##### Option 2 (pre-imported sequences as .qza file)

Put the .qza files in `01-imported`. It is recommended that you name them (or use symbolic links to name them) `fastq_pe.qza` (paired-end data) and `fastq_se.qza` (single-end data), but you can change these filenames in `config.yaml`.

If your .qza file is in the correct format, the output of the command `qiime tools peek FILE` should be:

Paired-end data:

```
Type:        SampleData[PairedEndSequencesWithQuality]
Data format: SingleLanePerSamplePairedEndFastqDirFmt
```

Single-end data:

```
Type:        SampleData[SequencesWithQuality]
Data format: SingleLanePerSampleSingleEndFastqDirFmt
```

## Sequence QC and truncation length

After your sequences are demultiplexed to per-sample .fastq.gz files, you can (optionally) run some diagnostics on them:

* FastQC to get error profiles and lots of other information about your sequences.
* MultiQC to collate and summarize the FastQC results.
* Helper script *fastqc_per_base_sequence_quality_dropoff.py* to help choose appropriate truncation (DADA2) and trim (Deblur) lengths for your configuration file.

##### FastQC & MultiQC

Installation note: This section requires a separate Conda environment, `multiqc`, which you can create and activate with these commands:

```
conda create -n multiqc -c bioconda fastqc multiqc
conda activate multiqc
```

First, create directories for FastQC and MultiQC output for Read 1 and Read 2:

```
cd /path/to/fastq
mkdir fastqc-R1
mkdir fastqc-R2
```

Then run FastQC on the forward and the reverse reads (change the .fastq.gz filename wildcards as necessary):

```
fastqc *_R1_001.fastq.gz -o fastqc-R1
fastqc *_R2_001.fastq.gz -o fastqc-R2
```

Then run MultiQC on the output of each FastQC run:

```
cd fastqc-R1
multiqc --export .
cd ../fastqc-R2
multiqc --export .
```

##### Choose sequence truncation lengths

Finally, reactivate your `qiime2-2023.5` environment and run ***fastqc_per_base_sequence_quality_dropoff.py***, which will determine the position where median per-base sequence quality drops below some fraction (default: 0.90, here: 0.85) of its maximum value. The output of this script can be used as your parameter setting for DADA2 truncation or Deblur trim values (use output from Read 1 for `dada2pe_trunc_len_f`, `dada2se_trunc_len`, and `deblur_trim_length`; use output from Read 2 for `dada2pe_trunc_len_r`):

```
cd /path/to/tourmaline
scripts/fastqc_per_base_sequence_quality_dropoff.py \
--input 00-data/fastq/fastqc-R1/multiqc_data/mqc_fastqc_per_base_sequence_quality_plot_1.txt \
--cutoff 0.85
```

Note that DADA2 paired-end mode requires a minimum overlap of 12 bp to merge Read 1 and Read 2.

## Metadata file

*Format metadata file for QIIME 2.*

The metadata file—by default named `metadata.tsv` and found in `00-data`—is a tab-delimited text file (e.g., exported from Excel) with samples as rows and metadata categories as columns. It is also known as the mapping file.

#### Test data: metadata is ready to go

The metadata file that comes with Tourmaline is ready to go with the test data. It is complete, curated, and its sample names match the sample names in the FASTQ manifest file.

#### Your data: standardize and curate your metadata with meaningful categories

It's important to have rich and complete sample metadata before you begin your analyses. Your sample metadata should include basic collection information like `collection_timestamp`, `latitude`, and `longitude`, plus categories that describe treatment groups and environmental metadata relevant to your samples.

Sample preparation information is also part of your metadata and includes information about how the samples were sequenced.

The following are some suggested columns to include in your metadata for each project:

* `project_name`
* `experiment_design_description`
* `target_gene`
* `target_subfragment`
* `pcr_primers`
* `pcr_primer_names`
* `platform`
* `instrument_model`
* `run_center`
* `run_date`

The above columns follow the standards set by [Qiita](https://qiita.ucsd.edu/static/doc/html/gettingstartedguide/index.html). For additional help formatting your metadata see [Metadata in QIIME 2](https://docs.qiime2.org/2023.5/tutorials/metadata/), the [EMP Metadata Guide](http://www.earthmicrobiome.org/protocols-and-standards/metadata-guide/), [QIIMP](https://qiita.ucsd.edu/iframe/?iframe=qiimp), and NMDC's [Introduction to Metadata and Ontologies](https://microbiomedata.org/introduction-to-metadata-and-ontologies/).

##### Symlinks to metadata and FASTQ manifest files

It's a good idea to keep current versions of your metadata file (and perhaps your FASTQ manifest files) in a dedicated metadata directory in your project directory. Then make a symbolic link to these files in the `00-data` directory.  Use the code below to remove the test files and create links to your own metadata and FASTQ manifest files (the files in `/path/to/metadata` can be named however you like):

```
cd /path/to/tourmaline/00-data
rm metadata.tsv manifest_se.csv manifest_pe.csv
ln -s /path/to/metadata/metadata.tsv metadata.tsv
ln -s /path/to/metadata/manifest_se.csv manifest_se.csv
ln -s /path/to/metadata/manifest_pe.csv manifest_pe.csv
```

## Appendix: Helper scripts

As we have seen already, Tourmaline comes with helper scripts in the `scripts` directory. 

#### Setup

These scripts might come in handy in setting up your workflow.

***initialize_dir_from_existing_tourmaline_dir.sh*** – From the main directory of a newly cloned tourmaline directory, run this script to copy the config.yaml and Snakefile from an existing tourmaline directory, remove the test files, then copy the data files and symlinks from the existing tourmaline directory. Very useful when re-running an analysis on the same dataset. Simply clone a new copy of Tourmaline, then run this script to copy everything from the old Tourmaline directory to the new one, then make your desired changes to the parameters.

```
scripts/initialize_dir_from_existing_tourmaline_dir.sh /path/to/existing/tourmaline
```

***create_manifest_from_fastq_directory.py*** – Create a FASTQ manifest file from a directory of FASTQ files. This script makes the following assumptions: the first characters after the sample names are "\_S[0-9]{1,3}"; only Lane 1 data is present ("\_L001"); R1 and R2 files are both present; and only one file (with suffix "\_001") is present for each of R1 and R2.

```
scripts/create_manifest_from_fastq_directory.py /path/to/fastq/dir \
00-data/manifest_pe.csv 00-data/manifest_se.csv
```

***match_manifest_to_metadata.py*** – Given a metadata file and a FASTQ manifest file, generate two new manifest files (paired-end and single-end) corresponding to the samples in the metadata file. This can be useful if you demultiplexed from "Earth Microbiome Project (EMP) protocol" format for paired-end reads and unzipped the output to get the manifest file.

```
scripts/match_manifest_to_metadata.py 00-data/metadata.tsv /path/to/demux/data/MANIFEST \
00-data/manifest_pe.csv 00-data/manifest_se.csv
```

***fastqc_per_base_sequence_quality_dropoff.py*** – Determine the position where median per base sequence quality drops below some fraction (default: 0.90) of its maximum value. This is useful for defining 3' truncation positions in DADA2 (trunc-len) and Deblur (trim-length). This script should be run separately for Read 1 and Read 2 fastqc/multiqc output.

```
scripts/fastqc_per_base_sequence_quality_dropoff.py \
--input /path/to/fastqc-R1/multiqc_data/mqc_fastqc_per_base_sequence_quality_plot_1.txt \
--cutoff 0.85
```

#### Wrapped

These scripts are wrapped by Tourmaline (used by the workflow), but some of them can be run separately.

***detect_amplicon_locus.py*** – Try to guess the amplicon locus of a fasta file based on the first four nucleotides. Used by rule `repseq_detect_amplicon_locus`.

```
scripts/detect_amplicon_locus.py \
-i 02-output-dada2-pe/00-table-repseqs/repseqs.fasta \
> 02-output-dada2-pe/00-table-repseqs/repseqs_amplicon_type.txt
```

***fastaLengths.pl*** – Calculate the length of every sequence in a fasta file. Used by rule `repseq_length_distribution`.

```
scripts/fastaLengths.pl 02-output-dada2-pe/00-table-repseqs/repseqs.fasta \
> 02-output-dada2-pe/00-table-repseqs/repseqs_lengths.txt
```

***run_odseq.R*** – Determine which representative sequences are likely to be outliers using the R package *odseq*. Used by rule `alignment_detect_outliers`.

```
Rscript --vanilla scripts/run_odseq.R 02-output-dada2-pe/01-alignment-tree-taxonomy/aligned_dna_sequences.fasta affine 1000 0.025 02-output-dada2-pe/01-alignment-tree-taxonomy/aligned_dna_sequences_outliers.csv
```

# 4-RUN

## Run Snakemake

Now we are ready to start running Tourmaline commands using the `snakemake` command. In the file paths below, `{method}` is one of: `dada2-pe` (paired-end DADA2), `dada2-se` (single-end DADA2), or `deblur-se` (single-end Deblur); and `{filter}` is one of `unfiltered` (no filtering of representative sequences and feature tables) or `filtered` (filtering of representative sequences and feature tables by taxonomy and/or feature ID).

Note that any of the commands below can be run with various options, including `--printshellcmds` to see the shell commands being executed and `--dryrun` to display which rules would be run but not execute them.

Tourmaline will automatically check if the required input files and parameters are provided properly before running, and will generate an error with feedback if they are not.

### Activate snakemake environment

All of the commands below will be run with your 'snakemake' environment activated. The snakemake commands will then activate the 'qiime2-2023.5' environment automatically as they are run.  

```
conda activate snakemake
```

#### Number of compute cores

You must provide the maximum number of threads you want with the `snakemake --cores` parameter. If the `config.yaml` file specifies more threads than the number specified by `--cores`, it will scale down to match the `--cores` value.

Example, running with 5 cores:

```
snakemake --use-conda dada2_pe_denoise --cores 5
```

Every snakemake command below must be run with the '--use-conda' option. 

### Unfiltered mode

The first command is `snakemake dada2_pe_denoise`, which imports the FASTQ files and the reference database (if not already present in directory `01-imported`), summarizes the FASTQ data, runs denoising using DADA2, and summarizes and visualizes the output feature table and representative sequences (for DADA2, the representative sequences are amplicon sequence variants or ASVs). 

```
snakemake --use-conda dada2_pe_denoise --cores 5
# or dada2_se_denoise or deblur_se_denoise
```

At this point, the user should determine if the DADA2 parameters need to be modified (and if so, delete the output files and rerun the *denoise* step) and when satisfied choose appropriate rarefaction depths for the parameters “alpha_max_depth” and “core_sampling_depth” in `config.yaml`. 

The second command is `snakemake dada2_pe_taxonomy_unfiltered`, which assigns taxonomy to the representative sequences using a Naive Bayes classifier or consensus BLAST method, visualizes the taxonomy, and generates an interactive taxa barplot. 

```
snakemake --use-conda dada2_pe_taxonomy_unfiltered --cores 5
# or dada2_se_taxonomy_unfiltered or deblur_se_taxonomy_unfiltered
```

The third command is `snakemake dada2_pe_diversity_unfiltered`, which will align and build a phylogenetic tree of the representative sequences, identify representative sequences that have unassigned taxonomy or are potential outliers, summarize and plot the representative sequence properties, perform alpha-rarefaction, and run alpha-diversity and beta-diversity analyses and group significance tests using a full suite of metrics. 

```
snakemake --use-conda dada2_pe_diversity_unfiltered --cores 5
# or dada2_se_diversity_unfiltered or deblur_se_diversity_unfiltered
```

The fourth and final command is `snakemake dada2_pe_report_unfiltered`, which will create a comprehensive HTML report of parameters, metadata, inputs, outputs, and visualizations in a single file. The report includes hyperlinks to QIIME 2 visualization files, which can be downloaded and drag-and-dropped into [view.qiime2.org](https://view.qiime2.org) for viewing. Filtering of representative sequences is provided by the *filtered* mode.

```
snakemake --use-conda dada2_pe_report_unfiltered --cores 5
# or dada2_se_report_unfiltered or deblur_se_report_unfiltered
```

### Filtered mode

After viewing the *unfiltered* results—the taxonomy summary and taxa barplot, the representative sequence summary plot and table, or the list of unassigned and potential outlier representative sequences—the user may wish to filter (remove) certain taxonomic groups or representative sequences. If so, the user should first check the following parameters and/or files:

* copy `2-output-dada2-pe-unfiltered/02-alignment-tree/repseqs_to_filter_outliers.tsv` to `00-data/repseqs_to_filter_dada2-pe.tsv` to filter outliers, or manually include feature IDs in `00-data/repseqs_to_filter_dada2-pe.tsv` to filter those feature IDs (change "dada2-pe" to "dada2-se" or "deblur-se" as appropriate);
*  `exclude_terms` in `config.yaml` – add taxa to exclude from representative sequences, if desired;
*  `repseq_min_length` and `repseq_max_length` in `config.yaml` – set minimum and/or maximum lengths for filtering representative sequences, if desired;
*  `repseq_min_abundance` and `repseq_min_prevalence` in `config.yaml` – set minimum abundance and/or prevalence values for filtering representative sequences, if desired.

The user can then run the *filtered* mode of the workflow.

```
snakemake --use-conda dada2_pe_denoise --cores 5
# or dada2_se_denoise or deblur_se_denoise

snakemake --use-conda dada2_pe_taxonomy_filtered --cores 5
# or dada2_se_taxonomy_filtered or deblur_se_taxonomy_filtered

snakemake --use-conda dada2_pe_diversity_filtered --cores 5
# or dada2_se_diversity_filtered or deblur_se_diversity_filtered

snakemake --use-conda dada2_pe_report_filtered --cores 5
# or dada2_se_report_filtered or deblur_se_report_filtered
```

Note that the multiple sequence alignment and tree are rebuilt after filtering representative sequences. Depending on the alignment program and parameters, alignment can take several hours to complete.

## Check the output

#### View report

Open your HTML report (`03-reports/report_{method}_{filter}.html`) in [Chrome](https://www.google.com/chrome/) or [Firefox](https://www.mozilla.org/en-US/firefox/new/). To view the linked files: 

* QZV (QIIME 2 visualization): click to download, then drag and drop in [https://view.qiime2.org](https://view.qiime2.org). Empress trees (e.g., `rooted_tree.qzv`) may take more than 10 minutes to load.
* TSV (tab-separated values): click to download, then open in Microsoft Excel or Tabview (command line tool that comes with Tourmaline).
* PDF (portable document format): click to open and view in new tab.

Downloaded files can be deleted after viewing because they are already stored in your Tourmaline directory.

#### Reality check

After completing denoising and core diversity analyses, determine if the results make sense by asking the following questions:

* How many sequences did I start with, and how many are left after denoising?
* Are the representative sequences of similar length or of very different lengths?
* Do the sequence alignment and tree look reasonable?
* Do samples cluster in an expected way in PCoA space?
* Do the taxonomic profiles match expected taxonomic compositions?

## Modify intermediate files

The parameters in `config.yaml` offer many options for customization, but you may want to process your data in a way that Tourmaline doesn't currently support.

You can modify or replace any of the intermediate files in the workflow. As long as the filename and location are the same as the original file, Snakemake will recognize it and use it in the workflow. Here are some examples where this might be useful:

* Alignment: Tourmaline builds the multiple sequence alignment of representative sequences *de novo* (with choice of 3 programs), but you could build it using a different method and then save the alignment as `02-output-{method}-{filter}/02-alignment-tree/aligned_repseqs.fasta` and `02-output-{method}-{filter}/02-alignment-tree/aligned_repseqs.qza`.
* Tree: Tourmaline builds the tree of representative sequences *de novo* using FastTree, but you could build it using a different method (e.g., with `qiime fragment-insertion`) and then save the tree as `02-output-{method}-{filter}/02-alignment-tree/rooted_tree.qza`.

## Snakemake tips

#### Rules

Snakemake works by executing rules, defined in the `Snakefile`. Rules specify commands and outputs but most critically inputs, which dictate which other rules must be run beforehand to generate those inputs. By defining pseudo-rules at the beginning of the `Snakefile`, we can specify desired endpoint targets as "inputs" that force execution of the whole workflow or just part of it.

When a Snakemake command is run, only those rules that need to be executed to produce the requested target will be run. To make the most of Tourmaline, you might want to familiarize yourself with Snakemake using the [documentation](https://snakemake.readthedocs.io) or follow the tutorial [here](https://github.com/cuttlefishh/tutorials/tree/master/snakemake) to create your own simple Snakemake workflow and understand how it works.

#### Dry run and print shell commands

To see which jobs (rules) and commands will be run by the workflow, use the options `--dryrun` and `--printshellcmds`, respectively. `--dryrun` will prevent the workflow from being executed. `--printshellcmds` can be used with our without `--dryrun`:

```
snakemake --use-conda dada2_pe_denoise --dryrun --printshellcmds
```

#### Regenerate specific files

You can always delete any file you want to regenerate. Then there are several ways to regenerate it:

* Run `snakemake FILE` and Snakemake will determine which rules (commands) need to be run to generate that file.
* Run `snakemake RULE` where the rule generates the desired file as output.

#### Cleanup metadata for file

If a file is being regenerated when you think it shouldn't be, or a symbolic link is not being recognized, it might help to cleanup the metadata of that file. Cleaning up the metadata means that snakemake removes any tracked version info, and any marks that files are incomplete. Do do this, run:

```
snakemake --cleanup-metadata <filenames>
```

#### Directed Acyclic Graph (DAG)

Snakemake provides the command option `--dag` to generate a directed acyclic graph (DAG) of the jobs (rules) that will be run. The DAG is basically a graph that shows the flow and order of rules to reach your desired target, and it can be rendered as a PDF (or other image format) using the program Graphviz on your computer. If you do not have Graphviz installed or are running Tourmaline through Docker, you can install it within the `qiime2-2023.5` conda environment like this:  

```
conda install -c conda-forge graphviz
```

As an example, to get a graph of the rules run when setting the rule `snakemake dada2_pe_report_unfiltered` as your target, run this command:

```
snakemake dada2_pe_report_unfiltered --dag | dot -Tpdf -Grankdir=LR -Gnodesep=0.1 -Granksep=0.1 > dag.pdf
```

For a simplified graph, use the `--rulegraph` option in place of `--dag`:

```
snakemake dada2_pe_report_unfiltered --rulegraph | dot -Tpdf -Grankdir=LR -Gnodesep=0.1 -Granksep=0.1 > rulegraph.pdf
```















## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

- MIOP terms are listed in the YAML frontmatter of this page.
- See <https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml> for list and definitions.

### Authors

| PREPARED BY | AFFILIATION | ORCID | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Luke Thompson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2024-12-06 |

- All authors known to have contributed to the preparation of this protocol should be listed, including those who filled in the template.
- Visit <https://orcid.org/> to register for an ORCID.

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2024-12-06 | Initial release |

- Version numbers start at 1.0.0 when the protocol is first completed and will increase when changes that impact the outcome of the procedure are made (patches: 1.0.1; minor changes: 1.1.0; major changes: 2.0.0).
- Release date is the date when a given protocol version was finalised.
- Description of revisions includes a brief description of what was changed relative to the previous version.

---

NEED TO EDIT HEADINGS BELOW...

## RELATED PROTOCOLS IN YOUR FOLDER

This is a list of other protocols deposited in your folder which should be known to users of this protocol. For example, if you create a derivative or altered protocol, you would link to the original protocol in the section below. Please include the link to each related protocol. Also include the version number of that protocol when you linked to it.

| PROTOCOL NAME AND LINK  | VERSION The version of the protocol you linked to | RELEASE DATE This is the date corresponding to the version listed to the left |
| ------------- | ------------- | ------------- |
| Content Cell  | Content Cell  | yyyy-mm-dd  |
| Content Cell  | Content Cell  | yyyy-mm-dd  |

## RELATED EXTERNAL PROTOCOLS

This is a list of other protocols that are not in your folder which should be known to users of this protocol. These include, e.g., kit manuals. Please upload all relevant external protocols to Appendix A and link to them here.

| EXTERNAL PROTOCOL NAME AND LINK  | ISSUER / AUTHOR Please note who authored the protocol (this may also be a company name) | ACCESS DATE This is the date you downloaded or scanned the protocol and uploaded it. |
| ------------- | ------------- | ------------- |
| Content Cell  | Content Cell  | yyyy-mm-dd  |
| Content Cell  | Content Cell  | yyyy-mm-dd  |

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| NOAA | National Oceanographic and Atmospheric Administration |
| AOML | Atlantic Oceanographic and Meteorological Laboratory |
| MSU | Mississippi State University |
| NGI | Northern Gulf Institute |

## GLOSSARY

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |

# BACKGROUND

This document describes the required protocol to conduct insert name of the method/protocol.

## Summary

Insert a short description of the background for the method/protocol (e.g. why and for which purpose do you perform water sampling).
Please provide a brief summary of your method including, as appropriate, a brief description of what techniques your best practice is about, which ocean environments or regions it targets, the primary sensors covered, what type of data/measurements/observing platform it covers, limits to its applicability.

## Method description and rationale

Insert a short description of the functioning principal of the methodology used in the protocol (i.e. how does the method work?). Please note that this is different from the step-by-step description of the protocol procedure.
Insert a short statement explaining why the specific methodology used in the protocol has been selected (e.g. it is highly reproducible, highly accurate, procedures are easy to execute etc….).

## Spatial coverage and environment(s) of relevance

If applicable, please specify the region where the protocol is applied. For regional term guidance see here. If applicable, please indicate here the environment(s) of relevance for the protocol, e.g. Abyssal plain. Select from the ENVO terminology.

# PERSONNEL REQUIRED

Insert the number of technicians, data managers, and scientists required for the good execution of the procedure

## Safety

Identify hazards associated with the procedure and specify protective equipment and safety training required to safely execute the procedure

## Training requirements

Specify technical training required for the good execution of the procedure.

## Time needed to execute the procedure

Specify how much time is necessary to execute the procedure.

# EQUIPMENT, SOFTWARE & PACKAGES


| NAME | VERSION OR MODEL | MANUFACTURER OR CREATOR | REMARKS |
| ------------- | ------------- | ------------- | ------------- |
| Equipment |
| e.g. Laptop | Content Cell | Content Cell | e.g. needs at least 16 GB of RAM |
| Content Cell | Content Cell | Content Cell | Content Cell |
| Software |
| Content Cell | Content Cell | Content Cell | Content Cell |
| Content Cell | Content Cell | Content Cell | Content Cell |
| Code |
| Please include the links to the code you used for this analysis |
| e.g. link to the released version of a github repository  | Content Cell | Content Cell | Content Cell |
| Content Cell | Content Cell | Content Cell | Content Cell |

## GUIDE TO ARCHIVED METHODOLOGY

The contents of this archive should allow your analysis to be reproduced exactly as you intended it.

This document provides guidance on the contents of each partner's compressed archive of in-silico methods. This document should be part of that same archive, serving as an extended README.

Below, please find guidance on what this archive should include. When describing the contents of the archive, please give precise file names and relative paths to the files.




## Archive content

To reproduce the in-silico analysis, please provide one of the following (in order of decreasing preference)

1. Jupyter, R notebook(s) or equivalents

2. Downloaded archive of (the released version of) your github repository

3. Individual scripts

In each of the above cases, guidance and documentation for all the steps you took to perform the in-silico analysis should be included. In case 1., code and documentation are integrated. In cases 2. and 3., in-line comments may be provided, however, these are not generally sufficient as documentation. In those cases, please provide a step-by-step protocol on how and when to run each script in the Execution Procedure section below.

Please include a script on **data acquisition** (e.g. documentation and code to pull sequences from INSDC, access sequences on an institutional FTP server, download metadata files, check file integrity via md5 checksum). Please add sufficient detail, so that the partners only have to install the software, run this script and will then have all the data needed to perform any analysis described below.

### Code
Here please describe each file containing code, including its purpose, its input, its output. Please provide the names and the relative paths to this documentation.

### Code documentation
Here, please indicate if your documentation is with the code (in a code notebook) or stored separately. In-line comments are not considered documentation. If the documentation is stored separately, please provide the names and the relative paths to this documentation.

### Metadata
Please provide link(s) to the files containing metadata about your sequence data (e.g. environmental data, procedural data). Please see the MIxS compliant metadata guidance.

Auxiliary files
e.g. mapping files, test/dummy files, colour palette


## Execution Procedure

Please fill out this section if you have not already documented it as part of your R, Jupyter, or similar notebook. In this section, please provide a step-by-step guidance on how and when to run each component of your code.

## Quality control

In this section please include the names and paths that can be used to validate that operations were successful. If such checks were done during the execution procedures, please note this here. We recommend identifying such steps with in-line tags (e.g. “#QC”).

## Basic troubleshooting guide

Identify known issues associated with the procedure, if any.
Provide troubleshooting guidelines when available.

# REFERENCES

Insert all references cited in the document.
Please insert full DOI address when available, e.g. http://doi.dx.org/10.1007/s11258-014-0404-1

# APPENDIX A: DATASHEETS

Link to any documents such as software guidelines, images, etc that support this protocol. Please include a short note describing the document's relevance.
