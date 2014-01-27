set -e

dir=$(cd $(dirname $0); pwd)

mkdir -p _resources
cd _resources
test -d bash-config || git clone https://github.com/Devbootcamp/bash-config.git
cd bash-config
git pull
cp $dir/dbc-ps1.sh ps1.sh # override the prompt with a dbc-specific one
./install --no-prompt
