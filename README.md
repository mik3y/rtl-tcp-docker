# rtl-tcp-docker

This is a small project that builds a Docker container for running the
[`rtl-tcp` daemon](https://github.com/osmocom/rtl-sdr/blob/master/src/rtl_tcp.c)
in Docker.

## Usage

Here's an example of how to run the container under Docker.

```
$ docker run --rm -i -t -p 1234:1234 --device=/dev/bus/usb ghcr.io/mik3y/rtl-tcp-docker:latest
```

Arguments to `docker run` that are after the container name will be appended to
this command.
