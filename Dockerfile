FROM debian:stable-slim
WORKDIR /home/myfolder

ARG MY_VAR 

RUN mkdir -p ~/.ssh \
 && printf "$MY_VAR" > ~/.ssh/id_rsa \
 && chmod 400 ~/.ssh/id_rsa \
 && echo r is "cat ... " \
 && cat ~/.ssh/id_rsa \
 && echo "OK!!"

