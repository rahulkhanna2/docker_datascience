#!/bin/bash

docker build -t datascience:version1 .
docker rm -f datascience;docker run -i -t -d --network host --name datascience -v /home/knoldus:/root/mounted datascience:version1


