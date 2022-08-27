#!/usr/bin/env bash
set -x
set -n

pip install shadowsocks
mv /usr/local/bin/ssserver /usr/local/bin/pyapp 
pyapp -p 8000 -k passw0rd -m rc4-md5 --user root -d start
