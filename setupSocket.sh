#!/bin/bash
PORT=$1
PORT_TO=$(($PORT+1))
sudo sed -i "s/$PORT/$PORT_TO/" /etc/shadowsocks.json
sudo ssserver -c /etc/shadowsocks.json -d stop
sudo ssserver -c /etc/shadowsocks.json -d start
