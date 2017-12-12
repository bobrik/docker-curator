FROM alpine:3.6

RUN apk --no-cache add python py-setuptools py-pip && \
    pip install elasticsearch-curator==5.4.0 && \
    pip install boto3 && \
    pip install requests-aws4auth && \
    apk del py-pip

USER nobody:nobody
ENTRYPOINT ["/usr/bin/curator"]
