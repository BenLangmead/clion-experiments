#!/bin/bash

docker run --rm -d -p 2222:22 -e SSH_KEY="$(cat ~/.ssh/id_rsa.pub)" --name $(cat name.txt) $(cat name.txt)

