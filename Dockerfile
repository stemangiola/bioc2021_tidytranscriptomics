FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

# getting error with gert, says needs libgit2-dev
RUN apt-get update && \
  apt-get install -y libgit2-dev

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

## Add DelayedMatrixStats temporary workaround https://github.com/PeteHaitch/DelayedMatrixStats/issues/84#issuecomment-893101166
RUN Rscript -e "BiocManager::install('PeteHaitch/DelayedMatrixStats@949d3868d26a63861abe6109e18e62f352c0c41e')"
          
## To fix preprocessCore error https://github.com/stemangiola/tidybulk/issues/145
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('preprocessCore', configure.args='--disable-threading')"

RUN Rscript -e "BiocManager::install(c('stemangiola/tidybulk@v1.4.0', 'stemangiola/tidySummarizedExperiment@v1.2.0', 'stemangiola/tidySingleCellExperiment@v1.3.0'))"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

