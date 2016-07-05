FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install wget build-essential git gcc-arm-linux-gnueabihf

# clean up apt items
RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /source

env CROSS_COMPILE arm-linux-gnueabihf-

VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
