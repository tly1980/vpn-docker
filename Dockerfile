FROM alpine:edge
LABEL maintainer "Tom Tang - https://github.com/tly1980"
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
COPY rootfs /

RUN /install.sh
ADD https://github.com/tly1980.keys /root/.ssh/authorized_keys
