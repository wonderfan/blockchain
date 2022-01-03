#!/usr/bin/env bash

IFS=":"
for P in $PATH; do
	ls -al $P | grep -i lsb
done