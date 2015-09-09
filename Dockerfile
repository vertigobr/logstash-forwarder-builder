# Liberty on Java8

FROM golang:1.5.0

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

RUN cd /go/src && \
	git clone git://github.com/elasticsearch/logstash-forwarder.git && \
	cd logstash-forwarder && \
	go build -o /go/bin/logstash-forwarder

CMD ["cat","/go/bin/logstash-forwarder"]