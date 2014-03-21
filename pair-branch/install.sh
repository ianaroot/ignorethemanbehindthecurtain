#!/bin/sh
set -e
dir=$(cd $(dirname $0); pwd)
ln -s "$dir/pair-branch" /usr/local/bin/
