FROM ubuntu:14.04
MAINTAINER Frank Lemanschik <DIREKTSPEED LTD>

RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install curl build-essential \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY build.sh /

VOLUME /dist

CMD /build.sh
