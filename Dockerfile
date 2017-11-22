FROM alpine:3.4

RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==5.4.0 && \
    pip install requests-aws4auth && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

USER nobody:nobody
ENTRYPOINT ["/usr/bin/curator"]
