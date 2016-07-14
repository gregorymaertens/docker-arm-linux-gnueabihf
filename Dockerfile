FROM starlabio/ubuntu-base:1.0
MAINTAINER Derek Straka <derek@starlab.io>

RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install gcc-arm-linux-gnueabihf bc u-boot-tools libncurses-dev && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

env CROSS_COMPILE arm-linux-gnueabihf-
