# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:16.04
MAINTAINER Codetector <codetector@codetector.cn>

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.9.1

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
