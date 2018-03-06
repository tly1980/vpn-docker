#!/bin/sh
apk add --no-cache openssh openconnect
passwd -d root
sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
