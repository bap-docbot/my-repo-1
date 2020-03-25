FROM debian:stable-slim
WORKDIR /home/myfolder

#ARG mykey
ENV MY_VAR 1

# RUN mkdir -p ~/.ssh \
RUN echo "var is $MY_VAR" 
 # && printf "$MY_VAR" > ~/.ssh/id_rsa \
 # && chmod 400 ~/.ssh/id_rsa \
 # && echo r is "cat ... " \
 # && cat ~/.ssh/id_rsa \
 # && echo "OK!!"

