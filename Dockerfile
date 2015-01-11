FROM debian:wheezy
MAINTAINER Ian Babrou <ibobrik@gmail.com>

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install --no-install-recommends -y python2.7 python-pip

RUN pip install elasticsearch-curator==2.1.1

ENTRYPOINT ["/usr/bin/python", "/usr/local/lib/python2.7/dist-packages/curator/curator_script.py"]
