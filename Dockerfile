FROM debian:stable-slim
WORKDIR /home/myfolder

ARG mykey
ENV MY_VAR=$mykey

RUN mkdir -p .ssh \
 && printf "$MY_VAR" > ~/.ssh/id_rsa \
 && chmod 400 ~/.ssh/id_rsa \
 && echo "cat ... " \
 && cat ~/.ssh/id_rsa \
 && echo "OK!!"

