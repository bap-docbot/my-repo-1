FROM ubuntu:xenial

RUN apt-get update -y && apt-get install gcc make && make main

ENTRYPOINT ["./main"]