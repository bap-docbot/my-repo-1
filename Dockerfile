FROM debian:stable-slim
WORKDIR /home/myfolder
RUN sh -c "echo 'here I am' > 1.file"
