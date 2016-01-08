FROM alpine:3.2

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator==3.4.0 && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curator"]
