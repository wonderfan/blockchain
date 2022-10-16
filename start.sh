#!/usr/bin/env bash

pid=`pidof app`

if [[ -n ${pid:-""} ]]; then
  kill -9 $pid &> /dev/null
fi

app -A -k passw0rd -p 8000 -m rc4-md5 &> /dev/null &  

echo "app started"

