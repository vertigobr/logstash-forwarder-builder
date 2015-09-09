#!/bin/sh
docker run --rm -ti vertigo/logstash-forwarder-builder:latest > logstash-forwarder
chmod +x logstash-forwarder
