set -e
dir=$(cd $(dirname $0); pwd)
# compare the two files and test their diff
cmp --silent `readlink $HOME/.bash_profile.d/prompt.sh` "$dir/prompt.sh"
