#!/bin/sh
set -e
dir=$(cd $(dirname $0); pwd)

sudo cp -rf $dir/com.devbootcamp.set-host-name.plist /Library/LaunchDaemons
