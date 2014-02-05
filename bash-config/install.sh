set -e

read -p "This will delete ~/.bash_profile, ~/.inputrc and ~/.ps1 press y to proceed: " confirm
test $confirm = 'y' -o $confirm = 'Y'

dir=$(cd $(dirname $0); pwd)

mkdir -p "$HOME/.bash_profile.d"

rm -rf "$HOME/.ps1"
ln -s "$dir/dbc-ps1.sh" "$HOME/.ps1"

rm -rf "$HOME/.bash_profile"
ln -s "$dir/profile.sh" "$HOME/.bash_profile"

rm -rf "$HOME/.inputrc"
ln -s "$dir/inputrc" "$HOME/.inputrc"
