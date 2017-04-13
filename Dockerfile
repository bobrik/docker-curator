FROM alpine:3.4

RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==5.0.1 && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curator"]
