FROM alpine:3.1

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator==3.0.3

ADD ./curator-entrypoint.sh /curator-entrypoint.sh

ENTRYPOINT ["/curator-entrypoint.sh"]
