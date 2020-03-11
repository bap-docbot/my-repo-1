FROM ubuntu:xenial

COPY update.sh /update.sh

RUN sudo groupadd docker && sudo useradd runner -g docker

ENTRYPOINT ["/update.sh"]