#!/bin/bash
hostnamectl set-hostname $(awk -F= '$1=="ID" { print substr ($2,2,4) ;}' /etc/os-release)$(ip addr show enp1s0 | awk '/ether / {print substr($2,16,19)".dev.$
systemctl restart NetworkManager
