#!/bin/sh

set -e

# Automatically set host and port parameters if elasticsearch container is linked with this curator container
if [ ! -z "$ELASTICSEARCH_PORT_9200_TCP_ADDR" ]; then
  set -- --host $ELASTICSEARCH_PORT_9200_TCP_ADDR --port $ELASTICSEARCH_PORT_9200_TCP_PORT $@
fi

exec /usr/bin/curator $@
