#!/bin/bash

if [[ -z SLACK_TOKEN ]]; then echo "SLACK_TOKEN is unset";exit 1;else echo "SLACK_TOKEN=$SLACK_TOKEN";fi
if [[ -z $2 ]]; then echo "TAG is unset";exit 1;else echo "TAG=$2";fi
TAG=$2

case $1 in
  -d )
    docker run -d --name jarbas -e SLACK_TOKEN=${SLACK_TOKEN} -p 8080:8080 jarbas:$TAG
    ;;
  -i )
    docker run -it --name jarbas --rm -e SLACK_TOKEN=${SLACK_TOKEN} -p 8080:8080 jarbas:$TAG
    ;;
  default )
    print_help
    ;;
esac
