set -e

dir=$(cd $(dirname $0); pwd)

mkdir -p "$HOME/.bash_profile.d"

rm -rf "$HOME/.bash_profile"
ln -s "$dir/profile.sh" "$HOME/.bash_profile"

rm -rf "$HOME/.inputrc"
ln -s "$dir/inputrc" "$HOME/.inputrc"
