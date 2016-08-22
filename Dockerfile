# Base Centos7 with SSH and additional EPEL repo

FROM centos:7.2.1511

MAINTAINER Lucas Russo

RUN echo nameserver 10.0.0.71 > /etc/resolv.conf && \
    yum update -y && \
    yum install -y epel-release net-tools tar wget openssh-server openssh-clients passwd sudo
