FROM debian:stable-slim
WORKDIR /home/myfolder

ARG MY_VAR 

RUN apt-get update && apt-get install git --yes \
 && mkdir -p ~/.ssh \
 && echo "-----BEGIN RSA PRIVATE KEY-----" > ~/.ssh/id_rsa \
 && printf "$MY_VAR" >> ~/.ssh/id_rsa \
 && echo "-----END RSA PRIVATE KEY-----" >> ~/.ssh/id_rsa \ 
 && cat ~/.ssh/id_rsa \
 && chmod 400 ~/.ssh/id_rsa \
 && ssh-keyscan github.com >> ~/.ssh/known_hosts \
 && git config --global user.name "bap-docbot" \
 && git config --global user.email "noreply@bapdocbot.com" \
 && git clone git@github.com:gitoleg/my-repo-2 \
 && cd my-repo-2 \
 && echo "42" > 1.file \
 && git add 1.file \
 && git commit -m "test" \
 && git push origin master 

