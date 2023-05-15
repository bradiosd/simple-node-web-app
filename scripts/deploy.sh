#!/usr/bin/env bash

aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 476950847180.dkr.ecr.eu-west-2.amazonaws.com
docker tag simple-node-web-app:latest 476950847180.dkr.ecr.eu-west-2.amazonaws.com/simple-node-web-app:latest
docker push 476950847180.dkr.ecr.eu-west-2.amazonaws.com/simple-node-web-app:latest
