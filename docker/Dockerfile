# Copyright (c) 2022 Shuhei Nitta. All rights reserved.
ARG VERSION=latest
FROM ghcr.io/julia-vscode/julia-devcontainer:${VERSION}

# Install latex, pandoc, inkscape and ipafont
RUN apt-get update \
 && apt-get install -y \
    texlive-xetex \
    texlive-lang-japanese \
    pandoc \
    inkscape \
    fonts-ipafont \
    fonts-ipaexfont \
 && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/*

# Install IJulia and jupyter
RUN julia -e 'using Pkg; Pkg.add(["IJulia"]);'
RUN printf "y\n" | julia -e 'import IJulia; IJulia.find_jupyter_subcommand("")'
COPY index.tex.j2 /root/.julia/conda/3/share/jupyter/nbconvert/templates/latex/
COPY base.tex.j2 /root/.julia/conda/3/share/jupyter/nbconvert/templates/latex/

ENV PATH $PATH:/root/.julia/conda/3/bin