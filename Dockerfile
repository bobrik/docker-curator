FROM alpine:3.4

RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==4.2.6 && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ADD ./curator-entrypoint.sh /curator-entrypoint.sh

ENTRYPOINT ["/curator-entrypoint.sh"]
