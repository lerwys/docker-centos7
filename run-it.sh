#!/usr/bin/env bash

set -a
set -e
set -u

NETWS="$1"
DNSIP="$2"

docker run --rm -t -i --net ${NETWS} --dns ${DNSIP} --name centos7 lerwys/docker-centos7:latest
