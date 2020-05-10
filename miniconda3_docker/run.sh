#!/bin/bash

docker build -t minicondajupyter:version1 .
docker rm -f minicondajupyter; docker run -t -p 8888:8888 -p 3000:3000 -v /home/ubuntu:/home --name minicondajupyter -d  minicondajupyter:version1


