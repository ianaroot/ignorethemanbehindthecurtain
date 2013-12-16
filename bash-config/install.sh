set -e
mkdir -p _resources
cd _resources
test -d bash-config || git clone https://github.com/quackingduck/bash-config.git
cd bash-config
./install
