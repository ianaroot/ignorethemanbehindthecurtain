set -e

bashExtDir="$HOME/.bash_profile.d"
mkdir -p $bashExtDir

dir=$(cd $(dirname $0); pwd)

rm -rf "$bashExtDir/prompt.sh"
ln -s "$dir/prompt.sh" "$bashExtDir/prompt.sh"
