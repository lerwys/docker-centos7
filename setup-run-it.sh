#!/usr/bin/env bash

set -a
set -e
set -u

# Docker network name
NAMEWS=ws
DNSIP=10.0.0.71

# Build docker image
./build.sh

# Create docker network
./create-net.sh ${NAMEWS}

# Run docker interactive
./run-it.sh ${NAMEWS} ${DNSIP}
