#!/usr/bin/env bash

set -x

# This line fails on our systemvms so let's remove it
sed '/net.core.somaxconn/d' -i /etc/sysctl.conf

