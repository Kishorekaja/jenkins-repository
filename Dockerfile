FROM ubuntu:18.04
COPY app/ .
WORKDIR app
RUN apt update
RUN apt install curl -y
RUN sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt install nodejs -y
EXPOSE 8080
