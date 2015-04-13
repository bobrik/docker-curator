#!/bin/sh

# Automatically set host and port parameters if elasticsearch container is linked with this curator container
if [[ "$ELASTICSEARCH_PORT_9200_TCP_ADDR" != "" ]]; then
  set -- --host $ELASTICSEARCH_PORT_9200_TCP_ADDR --port $ELASTICSEARCH_PORT_9200_TCP_PORT $@
fi

/usr/bin/curator $@
