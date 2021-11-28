FROM debian:stable-slim

WORKDIR /

COPY ./bin/build.sh /
RUN sh /build.sh && rm -f /build.sh
EXPOSE 1234/tcp
ENTRYPOINT ["/usr/bin/rtl_tcp"]
