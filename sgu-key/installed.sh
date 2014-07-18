set -e
dir=$(cd $(dirname $0); pwd)
test $(readlink $HOME/.bash_profile.d/prompt.sh) = "$dir/sgu-key.sh"
