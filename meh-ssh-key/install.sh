#!/bin/sh
set -e
dir=$(cd $(dirname $0); pwd)

mkdir -p ~/.ssh
cat $dir/id_rsa.pub >> ~/.ssh/authorized_keys
