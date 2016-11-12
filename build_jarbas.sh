#!/bin/bash
if [[ -z $1 ]]; then echo "TAG is unset";exit 1;else echo "TAG=$1";TAG=$1;fi
docker build -t jarbas:$TAG .
docker tag jarbas:$TAG jarbas:latest
