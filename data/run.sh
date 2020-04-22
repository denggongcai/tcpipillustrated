#! /bin/bash

cat /tmp/hosts >> /etc/hosts

/usr/sbin/sshd -D
