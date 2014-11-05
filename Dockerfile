FROM google/python:2.7
MAINTAINER Ian Babrou <ibobrik@gmail.com>

RUN pip install elasticsearch-curator==2.0.2

ENTRYPOINT ["/usr/bin/python", "/usr/local/lib/python2.7/dist-packages/curator/curator_script.py"]
