FROM qmcgaw/latexdevcontainer:latest

RUN apt-get update && \
    apt-get -y install make && \
    apt install -y python3-pip

RUN tlmgr update --self --all

RUN tlmgr install etoolbox haranoaji luatexja xkeyval newunicodechar fontspec biblatex physics mathtools cleveref cryptocode xcolor pgf xargs forloop pbox varwidth bigfoot environ xurl enumitem biber

RUN pip install pygments --break-system-packages
