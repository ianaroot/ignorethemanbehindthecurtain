set -e

read -p "This will delete ~/.bash_profile.d/prompt.sh press y to proceed: " confirm
test $confirm = 'y' -o $confirm = 'Y'

bashExtDir="$HOME/.bash_profile.d"
mkdir -p $bashExtDir

dir=$(cd $(dirname $0); pwd)

rm -rf "$bashExtDir/prompt.sh"
ln -s "$dir/prompt.sh" "$bashExtDir/prompt.sh"
