FROM ubuntu:xenial

COPY update.sh /update.sh

RUN groupadd docker && useradd runner -g docker && su runner

ENTRYPOINT ["/update.sh"]