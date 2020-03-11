FROM ubuntu:xenial

COPY update.sh /update.sh

RUN groupadd docker && useradd runner -g docker

ENTRYPOINT ["/update.sh"]