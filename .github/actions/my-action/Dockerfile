FROM ubuntu:xenial

COPY main.c /main.c
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y && \
    apt-get install -y gcc make git

RUN make main && ./main

ENTRYPOINT ["/entrypoint.sh"]