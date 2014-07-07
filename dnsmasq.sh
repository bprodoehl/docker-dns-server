#!/bin/sh
# `/sbin/setuser dnsmasq` runs the given command as the user `dnsmasq`.
# If you omit that part, the command will be run as root.
#exec /sbin/setuser dnsmasq /usr/sbin/dnsmasq -k -h -H /tmp/extrahosts/hosts >>/var/log/dnsmasq.log 2>&1

/usr/sbin/dnsmasq -k -h -H /tmp/extrahosts/hosts >>/var/log/dnsmasq.log 2>&1
