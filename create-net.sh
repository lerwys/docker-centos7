#!/usr/bin/env bash

NAMEWS="$1"

docker network create ${NAMEWS} 2>/dev/null || true
