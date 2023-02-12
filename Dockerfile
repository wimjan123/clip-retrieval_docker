FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y ffmpeg software-properties-common && \ 
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt-get update -y && \
    apt-get install -y python3.8 python3-pip && \
    pip3 install clip-retrieval \
    LABEL maintainer="thewillonline"
LABEL version="0.1"
LABEL description="A simple image running clip retrieval"