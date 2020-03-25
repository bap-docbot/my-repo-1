FROM debian:stable-slim
WORKDIR /home/myfolder

ARG MY_VAR 

RUN apt-get update && apt-get install git --yes \
 && mkdir -p ~/.ssh \
 && printf "$MY_VAR" > ~/.ssh/id_rsa \
 && chmod 400 ~/.ssh/id_rsa \
 && git clone git@github.com:gitoleg/my-repo-2 \
 && cd my-repo-2 \
 && echo "42" > 1.file \
 && git add 1.file \
 && git commit -m "test" \
 && git push origin master 

