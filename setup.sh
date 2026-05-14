#!/bin/bash

set -e
sudo pkill -f hev-socks5-tunnel
sudo tee "/etc/NetworkManager/conf.d/90-dns-none.conf" /dev/null << 'EOF'
[main]
dns=none
EOF
sudo cp configs/resolv.conf /etc/resolv.conf
sudo cp configs/dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml
sudo cp configs/byedpi-start.service /etc/systemd/system/byedpi-start.service
sleep 1
sudo systemctl daemon-reload
sleep 2
sudo systemctl enable --now dnscrypt-proxy
active_connection=$(nmcli -t -f NAME connection show --active | head -n1)
nmcli connection modify "$active_connection" ipv4.dns "127.0.0.1"
nmcli connection modify "$active_connection" ipv4.ignore-auto-dns yes
nmcli connection down "$active_connection" 2>/dev/null
sleep 1
nmcli connection up "$active_connection"
sudo bash make.sh install
sudo byedpictl tun stop
