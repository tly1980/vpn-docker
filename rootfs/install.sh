#!/bin/sh
apk add --no-cache openssh
apk add --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    openconnect

sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
# for tiny proxy
passwd -d root

apk add --no-cache tinyproxy
mkdir -p /var/log/tinyproxy/
mkdir -p /var/run/tinyproxy/

chown nobody:nogroup -R /var/log/tinyproxy/
chown nobody:nogroup -R /var/run/tinyproxy/
