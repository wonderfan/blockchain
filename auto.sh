#!/usr/bin/env bash

ssh-keygen -t ed25519 -C "fanjiahe2000@163.com"
cat ~/.ssh/id_ed25519.pub

git config --global user.email "fanjiahe2000@163.com"
git config --global user.name "wonderfan"
