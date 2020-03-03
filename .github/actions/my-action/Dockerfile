FROM ubuntu:xenial

COPY main.c /main.c

RUN apt-get update -y && \
    apt-get install -y gcc make

RUN ls && make main && ./main
#COPY product /github/workspace
