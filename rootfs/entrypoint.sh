#!/bin/ash -v

# generate host keys if not present
ssh-keygen -A

exec /usr/sbin/sshd -D -e "$@"
