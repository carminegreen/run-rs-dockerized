FROM ubuntu:20.04

RUN apt-get update

# Installazione di node 18
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs

# Installazione di package per runnare run-rs
RUN apt-get -y install libkrb5-dev build-essential


RUN npm install -g run-rs

EXPOSE 27017
CMD [ "run-rs", "-d", "-l", "ubuntu2004", "-v", "5.0.0", "--keep", "-p", "--bind_ip_all"]
