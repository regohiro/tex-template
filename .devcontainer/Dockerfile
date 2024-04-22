FROM qmcgaw/latexdevcontainer:latest-full

RUN apt-get update && \
    apt-get -y install make && \
    apt install -y python3-pip

RUN pip install pygments --break-system-packages
