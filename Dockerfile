FROM debian:latest
MAINTAINER laurent NGAKO <laurent.ngako@gmail.com>
#Intall curl
RUN apt-get update -y
RUN apt-get install curl -y
#Install vim to edit the files.
RUN apt-get install -y vim
#Intall nodejs see: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
#expose port 8101 for test
EXPOSE 8001
#Create dev folder and use it.
RUN mkdir /home/dev/
WORKDIR /home/dev/

