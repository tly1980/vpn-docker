#!/bin/sh
apk add --no-cache openssh
apk add --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    openconnect oath-toolkit-oathtool
passwd -d root
sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
