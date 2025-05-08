FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    texlive-full \
    latexmk \
    fonts-dejavu \
    make \
    git \
    curl \
    wget \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -m vscode
USER vscode
WORKDIR /home/vscode
