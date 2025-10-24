FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2 mysql-server && apt clean

EXPOSE 80

CMD service mysql start && apachectl -D FOREGROUND
