FROM alpine:3.1

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator==3.1.0

ENTRYPOINT ["/usr/bin/curator"]
