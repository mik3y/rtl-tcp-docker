#!/bin/sh

set -ex

git clone https://github.com/steve-m/librtlsdr
cd librtlsdr && \
  autoreconf -i && \
  ./configure --prefix=/usr && \
  make &&\
  make install

apt-get remove -y \
    build-essential \
    ca-certificates \
    pkg-config \
    automake \
    autotools-dev \
    autoconf \
    libtool \
    git \
    libusb-1.0-0-dev

apt-get autoremove -y

rm -rf /tmp/* /var/lib/apt/lists/*
