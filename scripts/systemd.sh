#!/bin/bash

HAPROXY_SVC=$(systemctl cat haproxy.service | head -1 | awk '{print $2}'}
sed -i "s/Restart\=always/Restart\=on\-abnormal/g" $HAPROXY_SVC

systemctl enable cloud-early-config.service
systemctl enable cloud.service
