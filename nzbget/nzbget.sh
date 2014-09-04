#!/bin/bash
umask 000

exec /sbin/setuser nobody nzbget -D -c /config/nzbget.conf

while sleep 1; do
  if [[ -z $(pgrep nzbget) ]]; then
    break
  fi
done