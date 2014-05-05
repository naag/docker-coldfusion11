FROM phusion/baseimage:0.9.9
MAINTAINER pressrelations
EXPOSE 80 8500
VOLUME ["/var/www"]

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y wget unzip xsltproc apache2
ADD ./build/install/ /tmp/
ADD ./build/service/ /etc/service/
RUN /tmp/install-cf10.sh
