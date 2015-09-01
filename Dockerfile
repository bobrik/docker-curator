FROM alpine:3.2

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator==3.3.0

ENTRYPOINT ["/usr/bin/curator"]
