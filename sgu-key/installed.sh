set -e
dir=$(cd $(dirname $0); pwd)
cmp --silent "$HOME/.bash_profile.d/sgu-key.sh" "$dir/sgu-key.sh"

