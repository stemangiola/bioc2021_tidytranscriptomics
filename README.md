<!-- badges: start -->
[![DOI](https://zenodo.org/badge/343062488.svg)](https://zenodo.org/badge/latestdoi/343062488)
[![.github/workflows/basic_checks.yaml](https://github.com/stemangiola/bioc2021_tidytranscriptomics/workflows/.github/workflows/basic_checks.yaml/badge.svg)](https://github.com/stemangiola/bioc2021_tidytranscriptomics/actions) [![Docker](https://github.com/Bioconductor/BioC2020/raw/master/docs/images/docker_icon.png)](https://hub.docker.com/repository/docker/stemangiola/bioc2021_tidytranscriptomics) 	
<!-- badges: end -->

# Introduction to Tidy Transcriptomics
<p float="left">
<img height="100" alt="bioc2021" src="https://github.com/Bioconductor/BiocStickers/blob/71e4c2cb323c441daa0f2f9d48d3b8bbb564a3e2/events/Bioc2021/BioC2021.png?raw=true"/>
<img height="100" alt="tidybulk" src="https://github.com/Bioconductor/BiocStickers/blob/master/tidybulk/tidybulk.png?raw=true"/>
</p>

## Instructor names and contact information

* Maria Doyle <Maria.Doyle at petermac.org>  
* Stefano Mangiola <mangiola.s at wehi.edu.au>

## Syllabus

Material [web page](https://stemangiola.github.io/bioc2021_tidytranscriptomics/articles/tidytranscriptomics.html).

More details on the workshop are below.

## Workshop package installation 

This is necessary in order to reproduce the code shown in the workshop. The workshop is designed for R `4.1` and can be installed using one of the two ways below.

### Via Docker image

If you're familiar with [Docker](https://docs.docker.com/get-docker/) you could use the Docker image which has all the software pre-configured to the correct versions.

```
docker run -e PASSWORD=abc -p 8787:8787 stemangiola/bioc2021_tidytranscriptomics:bioc2021
```

Once running, navigate to <http://localhost:8787/> and then login with
`Username:rstudio` and `Password:abc`.

You should see the Rmarkdown file with all the workshop code which you can run.

### Via GitHub

Alternatively, you could install the workshop using the commands below in R `4.1`.

```
#install.packages('remotes')

# Need to set this to prevent installation erroring due to even tiny warnings, similar to here: https://github.com/r-lib/remotes/issues/403#issuecomment-748181946
Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS" = "true")

# Install same versions used in the workshop
remotes::install_github(c("stemangiola/tidybulk@v1.4.0"", "stemangiola/tidySummarizedExperiment@v1.2.0", "stemangiola/tidySingleCellExperiment@v1.3.0"))

# Install workshop package
remotes::install_github("stemangiola/bioc2021_tidytranscriptomics", build_vignettes = TRUE)

# To view vignettes
library(bioc2021tidytranscriptomics)
browseVignettes("bioc2021tidytranscriptomics")
```

To run the code, you could then copy and paste the code from the workshop vignette or [R markdown file](https://raw.githubusercontent.com/stemangiola/bioc2021_tidytranscriptomics/master/vignettes/tidytranscriptomics.Rmd) into a new R Markdown file on your computer.

## Workshop Description

Recently, [plyranges](https://bioconductor.org/packages/release/bioc/html/plyranges.html) and [tidybulk](https://www.bioconductor.org/packages/release/bioc/html/tidybulk.html) have made efforts toward the harmonization of biological data structures and workflows using the concept of data tidiness, to facilitate modularisation. In this workshop, we present [tidySingleCellExperiment](https://stemangiola.github.io/tidySingleCellExperiment/) and [tidySummarizedExperiment](https://stemangiola.github.io/tidySummarizedExperiment/), two R packages that allow the user to visualise and manipulate SingleCellExperiment and SummarizedExperiment objects in a tidy fashion. Importantly, the tidybulk framework now works natively with SummarizedExperiment objects and, thanks to tidySummarizedExperiment, allows tidy and modular RNA sequencing analyses without renouncing the efficiency of Bioconductor data containers. These tools are part of the [tidytranscriptomics](https://github.com/stemangiola/tidytranscriptomics) R software suite, and represent an effort toward the harmonisation of transcriptional analyses under the tidy umbrella.

### Pre-requisites

* Some familiarity with tidyverse syntax
* Some familiarity with bulk RNA-seq and single cell RNA-seq

Recommended Background Reading
[Introduction to R for Biologists](https://melbournebioinformatics.github.io/r-intro-biologists/intro_r_biologists.html)

### Workshop Participation

The workshop format is a 1.5 hour session consisting of hands-on demos, challenges and Q&A.

### _R_ / _Bioconductor_ packages used

* tidySummarizedExperiment
* tidySingleCellExperiment
* tidybulk
* tidyHeatmap
* limma
* edgeR
* DESeq2
* airway
* org.Hs.eg.db
* dittoSeq
* ggrepel
* GGally
* plotly


### Time outline

Guide

| Activity - Hands on demos with Q&A                                 | Time |
|--------------------------------------------------------------------|------|
| Part 1 Bulk RNA-seq with tidySummarizedExperiment and tidybulk     |  45  |
| Part 2 Single-cell RNA-seq with tidySingleCellExperiment           |  45  |
| Total                                                              |  90m |


#### Learning goals

* To understand how transcriptomic data can be represented and analysed according to the tidy data paradigm with tidySummarizedExperiment, tidybulk and tidySingleCellExperiment.

#### Learning objectives
* Explore, visualise and analyse bulk RNA-seq count data with tidySummarizedExperiment and tidybulk
* Explore and visualise single cell RNA-seq count data with tidySingleCellExperiment
