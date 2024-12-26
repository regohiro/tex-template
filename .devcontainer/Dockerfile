FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-24.04

# Install basic tools 
RUN apt-get update \
&& apt-get install -y bash-completion vim make 

# Install latex and associated tools
RUN apt-get install -y --no-install-recommends \
    texlive \
    texlive-lang-english \
    texlive-lang-japanese \
    texlive-latex-extra \
    texlive-extra-utils \
    texlive-bibtex-extra \
    texlive-science \
    texlive-publishers \
    texlive-humanities \
    texlive-pstricks \
    biber \
    latexmk \
    python3-pygments \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get clean

# Set workspace
WORKDIR /workspace

# Check
RUN tlmgr version && \
    latexmk -version && \
    texhash --version
