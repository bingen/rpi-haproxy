#!/bin/bash

CFG_FILE=/etc/haproxy/haproxy.cfg

sed -i "s/\${NEXTCLOUD_URL}/${NEXTCLOUD_URL}/g" $CFG_FILE

haproxy -f $CFG_FILE
