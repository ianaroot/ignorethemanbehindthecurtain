#!/bin/sh
set -e

mkdir -p _resources
cd _resources
test -d 'pair-branch' || git clone https://github.com/Devbootcamp/pair-branch.git
cd pair-branch
git pull
./install
