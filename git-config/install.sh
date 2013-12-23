set -e
mkdir -p _resources
cd _resources
test -d git-config || git clone https://github.com/ndelage/git-config.git
cd git-config
./install
