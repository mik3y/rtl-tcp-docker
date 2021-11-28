FROM debian:stable-slim

WORKDIR /

COPY ./bin/build.sh /
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        pkg-config \
        automake \
        autotools-dev \
        autoconf \
        libtool \
        git \
        libusb-1.0-0 \
        libusb-1.0-0-dev

RUN sh /build.sh && rm -f /build.sh
EXPOSE 1234/tcp
ENTRYPOINT ["/usr/bin/rtl_tcp"]
