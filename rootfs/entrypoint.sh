#!/bin/ash -v

# generate host keys if not present
ssh-keygen -A

# start the tiny proxy
# exec /usr/sbin/tinyproxy -c /tinyproxy.conf
# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"
