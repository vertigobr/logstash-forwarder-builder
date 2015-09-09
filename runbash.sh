#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -ti vertigo/logstash-forwarder-builder:latest $ENVBASH ${@:2}
