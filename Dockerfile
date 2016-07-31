FROM debian:latest
MAINTAINER laurent NGAKO <laurent.ngako@gmail.com>
#Intall curl
RUN apt-get update -y
RUN apt-get install curl
#Intall nodejs see: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

