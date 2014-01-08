set -e

mkdir -p _resources
cd _resources
test -d 'set-git-user' || git clone https://github.com/Devbootcamp/set-git-user.git
cd set-git-user
./install
