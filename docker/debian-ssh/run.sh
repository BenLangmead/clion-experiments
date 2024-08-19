#!/bin/bash

IMAGE=gcc7ssh
CONTAINER=gcc7ssh

docker run --rm -d -p 2222:22 -e SSH_KEY="$(cat ~/.ssh/id_rsa.pub)" --name ${CONTAINER} ${IMAGE}

