FROM ubuntu:14.04
MAINTAINER Frank Lemanschik <DIREKTSPEED LTD>

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install curl build-essential

RUN mkdir -p /build && \
    mkdir -p /dist

COPY build.sh /
RUN chmod +x /build.sh

VOLUME "/dist"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/build.sh"]
