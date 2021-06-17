hostnamectl set-hostname $(awk -F= '$1=="ID" { print substr ($2,2,4) ;}' /etc/os-release)$(hostname -I | awk -F ' ' '{print $1}' | awk -F '.' '{print $4".dev.tux.uqc.ch"}')
