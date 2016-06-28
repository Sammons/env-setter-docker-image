FROM alpine:3.4
RUN mkdir -p /data/busybox
COPY run.sh /data/busybox/run.sh
WORKDIR /data/busybox
CMD ["/bin/sh", "-c", "./run.sh"]