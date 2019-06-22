FROM rocker/binder:3.5.0


# Install package for latex
#RUN tlmgr install thumbpdf


# Copy your repository contents to the image
COPY --chown=rstudio:rstudio . ${HOME}


## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

