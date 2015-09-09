# Liberty on Java8

FROM vertigo/golang

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

RUN mkdir -p /go/src/github.com/elasticsearch/logstash-forwarder && \
    git clone https://github.com/elastic/logstash-forwarder.git /go/src/github.com/elasticsearch/logstash-forwarder && \
    export CGO_ENABLED="0" && \
    echo "building..." && \
    go env && \
    go install github.com/elasticsearch/logstash-forwarder
#    go install --ldflags '-extldflags "-static"' github.com/elasticsearch/logstash-forwarder

#USER developer

CMD ["cat","/go/bin/logstash-forwarder"]
