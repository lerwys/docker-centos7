#!/usr/bin/env bash

OPTNAMESERVER="echo nameserver 10.0.0.71 > /etc/resolv.conf \&\& \\\\"

sed -e "s|OPTNAMESERVER|${OPTNAMESERVER}|g" Dockerfile.ini > Dockerfile

docker build -t lerwys/docker-centos7 .
