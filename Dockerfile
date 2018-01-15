FROM alpine:3.6
LABEL maintainer "Tom Tang - https://github.com/tly1980"
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22 8888
COPY rootfs /

RUN /install.sh
ADD https://github.com/tly1980.keys /root/.ssh/authorized_keys
