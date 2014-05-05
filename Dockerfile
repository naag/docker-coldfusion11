FROM phusion/baseimage:0.9.9
MAINTAINER pressrelations
EXPOSE 8500

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y wget unzip xsltproc
ADD ./build/install/ /tmp/
ADD ./build/service/ /etc/service/
RUN /tmp/install-cf10.sh
